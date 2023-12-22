(require 'autothemer)

(autothemer-deftheme hell
  "Hell theme is a dark theme, I mean it's hell."
  ((((class color) (min-colors #xFFFFFF)))

  ;; Color palette
  (bg-main "#0c0c0c")
  (bg-dim "191919")
  (bg-dimmer "#292929")
  (fg-main "#ccb599")
  (fg-dim "#75727f")

  (constant "#ffa900")
  (keyword "#f0c674")
  (string "#ffa900")
  (preprocessor "#dc7575")
  (variable "#ccb599")
  (operator "#bd2d2d")
  )

  ;; Faces
  ((default (:foreground fg-main :background bg-main))

   ;; Cursor
   ;; (cursor (:background operator))
   (hl-line (:background bg-dimmer))
   (region (:background bg-dimmer))

   ;; Basic
   (font-lock-keyword-face (:foreground keyword))
   (font-lock-constant-face (:foreground constant))
   (font-lock-string-face (:foreground string))
   (font-lock-comment-face (:foreground fg-dim))
   (font-lock-builtin-face (:foreground preprocessor))
   (font-lock-variable-name-face (:foreground variable))
   (font-lock-type-face (:foreground keyword))
   (font-lock-function-name-face (:foreground operator))

   ;; Completion
   (company-tooltip (:background bg-dim))
   (company-preview (:background bg-dimmer))
   (company-tooltip-selection (:background bg-dimmer))
   (company-tooltip-scrollbar-track (:background bg-dim))
   (company-tooltip-scrollbar-thumb (:background keyword))
   (company-tooltip-common (:foreground operator))

   ;; Modeline
   (mode-line (:background bg-main :foreground fg-main))
   (mode-line-inactive (:background bg-main :foreground fg-dim))
   (header-line (:background bg-main :foreground fg-main))
   (header-line-inactive (:background bg-main :foreground fg-dim))

   ;; Search
   (highlight (:background keyword :foreground bg-main))

   ;; Org
   (org-level-1 (:foreground preprocessor))
   (org-level-2 (:foreground keyword))
   (org-level-3 (:foreground operator))
   (org-level-4 (:foreground variable))
   (link (:foreground preprocessor))
   )
  )

(provide 'hell-theme)

