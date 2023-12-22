;; Themes

(setq custom-theme-directory "~/.emacs.d/themes/")

(use-package modus-themes
  :config
  (setq modus-themes-common-palette-overrides
        '((border-mode-line-active unspecified)
          (border-mode-line-inactive unspecified)))
  )

(provide 'zolder-themes)
