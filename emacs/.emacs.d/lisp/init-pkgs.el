;;; package ---
(use-package multiple-cursors
  :bind
  (("M-/" . 'mc/mark-next-like-this)
   ("M-;" . 'mc/mark-previous-like-this)))

(use-package consult
  :custom
  ;; Disable preview
  (consult-preview-key nil)
  :bind
  (("C-x b" . 'consult-buffer)    ;; Switch buffer, including recentf and bookmarks
   ("M-l"   . 'consult-ripgrep)  ;; Search inside a project
   ("C-x C-b"   . 'consult-find)  ;; Search inside a project
   ("M-y"   . 'consult-yank-pop)  ;; Paste by selecting the kill-ring
   ("M-s"   . 'consult-line)      ;; Search current buffer, like swiper
   ))

(use-package crux   ;;;  duplicate line
  :ensure t
  :bind (("M-p" . crux-duplicate-current-line-or-region)))


(use-package command-log-mode
  :ensure t
  :config
  (setq command-log-mode-key-binding-open-log "C-c o"))




(use-package keycast
  :config
  (keycast-mode-line-mode 1))

(use-package vertico
  :custom
  (vertico-count 14)  ;; limit to a fixed size
  :bind (:map vertico-map
    ;; Use page-up/down to scroll vertico buffer, like ivy does by default.
    ("<prior>" . 'vertico-scroll-down)
    ("<next>"  . 'vertico-scroll-up))
  :init
  ;; Activate vertico
  (vertico-mode))

;; Convenient pa[Oth selection
(use-package vertico-directory
  :after vertico
  :ensure nil  ;; no need to install, it comes with vertico
  :bind (:map vertico-map
    ("DEL" . vertico-directory-delete-char)))


(use-package orderless
  :custom
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (orderless-style-dispatchers '(+orderless-consult-dispatch orderless-affix-dispatch))
  ;; (orderless-component-separator #'orderless-escapable-split-on-space)
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles partial-completion))))
  (completion-category-defaults nil) ;; Disable defaults, use our settings
  (completion-pcm-leading-wildcard t)) ;; Emacs 31: partial-completion behaves like substring

(use-package savehist
  :init
  (savehist-mode))

(use-package embark
  :bind
  (("M-."   . embark-act)         ;; Begin the embark process
   ("M-g"   . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'

  :config
  (use-package embark-consult))

(setq completion-styles '(orderless basic))
(require 'vertico-directory)

(use-package marginalia
       ;; Bind `marginalia-cycle' locally in the minibuffer.  To make the binding
       ;; available in the *Completions* buffer, add it to the
       ;; `completion-list-mode-map'.
       :bind (:map minibuffer-local-map
              ("M-A" . marginalia-cycle))

       ;; The :init section is always executed.
       :init
       ;; Marginalia must be activated in the :init section of use-package such that
       ;; the mode gets enabled right away. Note that this forces loading the
       ;; package.
       (marginalia-mode))

(use-package vterm
  :ensure t)



;; Emacs minibuffer configurations.
(use-package emacs
  :custom
  ;; Enable context menu. `vertico-multiform-mode' adds a menu in the minibuffer
  ;; to switch display modes.
  (context-menu-mode t)
  ;; Support opening new minibuffers from inside existing minibuffers.
  (enable-recursive-minibuffers t)
  ;; Hide commands in M-x which do not work in the current mode.  Vertico
  ;; commands are hidden in normal buffers. This setting is useful beyond
  ;; Vertico.
  (read-extended-command-predicate #'command-completion-default-include-p)
  ;; Do not allow the cursor in the minibuffer prompt
  (minibuffer-prompt-properties
   '(read-only t cursor-intangible t face minibuffer-prompt)))

(provide 'init-pkgs)

;;; init-pkgs.el ends here
