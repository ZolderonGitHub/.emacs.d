;; Org mode
(use-package org
  :defer t
  :config
  (add-hook 'org-mode-hook 'variable-pitch-mode)
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.0))
  :custom
  (org-ellipsis "...")
  (org-hide-emphasis-markers t)
  (org-startup-indented t))

;; Org modern
(use-package org-modern
  :after org
  :config
  (global-org-modern-mode)
  )

;; Spell checking
;; (when (eq system-type 'windows-nt)
;;   (use-package ispell
;;     :after org
;;     :no-require t
;;     :custom
;;     (ispell-program "D:/hunspell/bin/hunspell.exe")
;;     (ispell-local-dictionnary "en_US")
;;     (ispell-silently-savep t)
;;     )
;;   ;; Doc view
;;   (use-package doc-view
;;     :after org
;;     :custom
;;     (doc-view-dvipdfm-program "mutool.exe")
;;     )
;;   )

(use-package auctex
  :after org
  :hook
  (LaTeX-mode . turn-on-prettify-symbols-mode)
  :config
  )

(use-package org-fragtog
  :after org
  :config
  (add-hook 'org-mode-hook 'org-fragtog-mode)
  )

;; Icons
(use-package all-the-icons
  :if (display-graphic-p))
(use-package all-the-icons-dired
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))

(use-package olivetti
  :after org
  :config
  (setq olivetti-style 'fancy)
  (setq-default olivetti-body-width 100))

(defun olivetti-hook ()
    "Hook to run in org mode"
    (olivetti-mode)
    (auto-fill-mode 0)
    (variable-pitch-mode 1)
    (visual-line-mode 1))

(add-hook 'org-mode-hook 'olivetti-mode)

(use-package elfeed
  :defer t
  :config
  (setq elfeed-feeds '(
                       ("https://www.mediapart.fr/articles/feed" mediapart journal news)
                       ("https://www.theguardian.com/europe/rss" guardian journal news)
                       ("https://reporterre.net/spip.php?page=backend-simple" reporterre journal news)
                       )))

(provide 'zolder-org)
