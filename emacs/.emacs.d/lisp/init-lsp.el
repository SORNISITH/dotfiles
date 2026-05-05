(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")

  (setq lsp-log-io nil) ; if set to true can cause a performance hit


  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 (c-mode . lsp)
	 (c++-mode . lsp)
	 (java-mode . lsp)
	 ;; if you want which-key integration
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
)

;; (use-package company
;;   :ensure t
;;   :config
;;   (setq company-idle-delay 0
;;         company-minimum-prefix-length 1)

;;   ;; use TAB to complete
;;   (define-key company-active-map (kbd "TAB") #'company-complete-selection)
;;   (define-key company-active-map (kbd "<tab>") #'company-complete-selection))

;; optionally
;; (use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
;; (use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(use-package lsp-java
  :ensure t
  :after lsp
  :hook (java-mode . lsp))
;; (use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
;; (use-package dap-java :ensure nil)
;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode)
  )

(provide 'init-lsp)
