;;; init-corfu.el --- Interactive completion in buffers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Corfu (completion UI)
(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  :custom
  (tab-always-indent 'complete))

;; Cape (extra completion sources)
(use-package cape
  :ensure t
  :init
  (add-hook 'completion-at-point-functions #'cape-file))

;; Terminal support (only if needed)
(use-package corfu-terminal
  :ensure t
  :after corfu
  :init
  (unless (display-graphic-p)
    (corfu-terminal-mode +1)))

(provide 'init-corfu)
;;; init-corfu.el ends here


