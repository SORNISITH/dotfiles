(require 'pulse)

(setq pulse-delay 0.02)
(setq pulse-iterations 1)

(set-face-attribute 'pulse-highlight-face nil
                    :background "white")

(defun custom/wl-copy ()
  "Copy region to Wayland clipboard with visual feedback."
  (interactive)
  (if (use-region-p)
      (let ((start (region-beginning))
            (end (region-end)))
        ;; copy to clipboard
        (let ((process-connection-type nil))
          (let ((p (start-process "wl-copy" nil "wl-copy" "-n")))
            (process-send-string p
              (buffer-substring-no-properties start end))
            (process-send-eof p)))

        ;; visual flash
        (pulse-momentary-highlight-region start end)

        ;; clear selection
        (deactivate-mark)

        (message "Copied ✔"))
    (message "No region selected")))

(global-set-key (kbd "C-c c") #'custom/wl-copy)

(provide 'init-clipboard)
