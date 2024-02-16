;; Themes

(setq custom-theme-directory "~/.emacs.d/themes/")

(use-package autothemer
  :defer t)

(use-package modus-themes
  :defer t
  :config
  (setq modus-themes-common-palette-overrides
        '((border-mode-line-active unspecified)
          (border-mode-line-inactive unspecified)))
  )

(use-package doom-themes
  :defer t
  :config
  (setq doom-themes-enable-bold nil)
  (setq doom-themes-enable-italic nil))

(provide 'zolder-themes)
