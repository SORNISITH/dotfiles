;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:
;; This file bootstraps the configuration, which is divided into
;; a number of other files.
;;; Code:

;; Adjust garbage collection threshold for early startup (see use of gcmh below)
(setq gc-cons-threshold (* 128 1024 1024))
;; Process performance tuning
(setq read-process-output-max (* 4 1024 1024))
(setq process-adaptive-read-buffering nil)

(require 'package)
;; package sources
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))

(package-initialize)

;; refresh packages if empty
(unless package-archive-contents
  (package-refresh-contents))

;; install use-package if missing
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; backups
(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups" user-emacs-directory))))

;; custom file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror)

;; FIX: remove broken line


;; optional: if you really want to unbind function


;; install + load theme
(use-package doom-themes
  :config
  (load-theme 'doom-tokyo-night t))
;;;require package configurations ~.emacs.d/lisp/*
(require 'init-local nil t)
(require 'init-pkgs)
(require 'init-corfu)
(require 'init-clipboard)
;;; init.el ends here

