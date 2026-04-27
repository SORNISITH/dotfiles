;; Modern Org Style
(use-package org-modern
  :ensure t
  :config
  ;; Add styles for NEXT status
  (setq org-modern-todo-faces
        '(("NEXT" :foreground "purple" :weight bold :background "orange")))
  ;; Activate org-modern
  (global-org-modern-mode))


(provide 'init-orgmode-modern)
