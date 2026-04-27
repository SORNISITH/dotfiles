;;; init-local.el --- Load Custom Preference --- Configs
;;; Commentary:
;; Code:
;; show full path in modeline
(setq suggest-key-bindings nil)
(setq echo-keystrokes 0)
(set-face-attribute 'mode-line nil
                    :height 200)

(setq require-final-newline t)
(setq load-prefer-newer t)
(setq tab-width 4)
(setq select-enable-clipboard t)
(setq select-enable-primary t)
(setq custom-safe-themes t)
(menu-bar-mode -1)

(add-hook 'prog-mode-hook 'subword-mode)
(windmove-default-keybindings)
(global-display-line-numbers-mode)

;; Activate flymake for every prog-mode buffers.
(add-hook 'prog-mode-hook 'flymake-mode)
;; Use F3 to jump to the next error.
(global-set-key (kbd "<f3>") 'flymake-goto-next-error)
;; Make dired do something intelligent when two directories are shown
(setq dired-dwim-target t)
(setq delete-by-moving-to-trash t)
;; Record window configuration and enable
;; `M-x winner-undo` command to undo layout changes.
(winner-mode)
;; Remember Commands And Files For Easy Access.


(save-place-mode)
(recentf-mode)

(global-set-key (kbd "C-c p") 'compile)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-q") 'set-mark-command)
;; Press F5 to start compilation.
(global-set-key (kbd "<f5>") 'project-compile)
;; Press F3 to jump to the next error.
(global-set-key (kbd "<f3>") 'next-error)
;; Then re-run the compilation with Shift + F5 (to skip the command prompt)
(global-set-key (kbd "S-<f5>") 'project-recompile)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-local)
;;; init-local.el ends here


