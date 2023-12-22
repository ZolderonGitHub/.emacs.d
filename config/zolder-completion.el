;; Finding files
(use-package vertico
  :defer t
  :init
  (vertico-mode)
  :custom
  (vertico-cycle t)
  )

(use-package orderless
  :defer t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;; Enable rich annotations using the Marginalia package
(use-package marginalia
  :defer t
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

;; Completion
(use-package company
  :config
  (setq company-backends '((company-files
                            company-keywords
                            company-capf
                            company-yasnippet)
                           (company-abbrev company-dabbrev)
                           ))
  (global-company-mode t)
  (setq company-begin-commands '(self-insert-command))
  (setq company-idle-delay .1)
  (setq company-minimum-prefix-length 2)
  (setq company-tng-mode 1)
  (setq company-selection-wrap-around t)
  )

(use-package yasnippet
  :after company
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
  (yas-global-mode 1)
  )
(use-package yasnippet-snippets
  :after yasnippet)

(provide 'zolder-completion)
