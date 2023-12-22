;; Org mode
(use-package org
  :defer t
  :custom
  (org-ellipsis " ↴")
  (org-hide-emphasis-markers t)
  (org-startup-indented t))

;; Org modern
(use-package org-modern
  :after org
  :config
  (global-org-modern-mode)
  )

;; Spell checking
(when (eq system-type 'windows-nt)
  (use-package ispell
    :after org
    :no-require t
    :custom
    (ispell-program "D:/hunspell/bin/hunspell.exe")
    (ispell-local-dictionnary "en_US")
    (ispell-silently-savep t)
    )
  ;; Doc view
  (use-package doc-view
    :after org
    :custom
    (doc-view-dvipdfm-program "mutool.exe")
    )
  )

;; Icons
(use-package all-the-icons
  :if (display-graphic-p))
(use-package all-the-icons-dired
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))

(provide 'zolder-org)
