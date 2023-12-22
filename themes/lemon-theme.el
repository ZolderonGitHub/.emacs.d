(require 'autothemer)

(autothemer-deftheme lemon
  "Lemon theme is a dark theme, colorful and pastel-like."
  ((((class color) (min-colors #xFFFFFF)))

  ;; Color palette
  (bg-main "#04020c")
  (bg-dim "#0d0626")
  (bg-dimmer "#090419")
  (fg-main "#dedaf2")
  (fg-dim "#75727f")

  (light-blue "#bfc9ff")
  (sky-blue "#7fbfff")
  (pastel-green "#86f49a")
  (perfume-pink "#f5c6ff")
  (dull-lavender "#c3a7ef")
  (dull-lavender-dim "#917cb2")
  (dandelion-yellow "#fcd750"))

  ;; Faces
  ((default (:foreground fg-main :background bg-main))

   ;; Cursor
   (cursor (:background pastel-green))
   (hl-line (:background bg-dim))
   (region (:background bg-dim))

   ;; Baisc
   (font-lock-keyword-face (:foreground perfume-pink))
   (font-lock-constant-face (:foreground dandelion-yellow))
   (font-lock-string-face (:foreground pastel-green))
   (font-lock-comment-face (:foreground fg-dim))
   (font-lock-builtin-face (:foreground light-blue))
   (font-lock-variable-name-face (:foreground light-blue))
   (font-lock-type-face (:foreground dandelion-yellow))
   (font-lock-function-name-face (:foreground sky-blue))

   ;; Completion
   (company-tooltip (:background bg-dim))
   (company-preview (:background dull-lavender-dim))
   (company-tooltip-selection (:background dull-lavender-dim))
   (company-tooltip-scrollbar-track (:background bg-dimmer))
   (company-tooltip-scrollbar-thumb (:background dull-lavender-dim))
   (company-tooltip-common (:foreground sky-blue))

   ;; Modeline
   (mode-line (:background bg-main :foreground fg-main))
   (mode-line-inactive (:background bg-main :foreground fg-dim))
   (header-line (:background bg-main :foreground fg-main))
   (header-line-inactive (:background bg-main :foreground fg-dim))

   ;; Search
   (highlight (:background dull-lavender-dim))

   ;; Org
   (org-level-1 (:foreground light-blue))
   (org-level-2 (:foreground dandelion-yellow))
   (org-level-3 (:foreground perfume-pink))
   (org-level-4 (:foreground dull-lavender))
   (link (:foreground sky-blue))
   )
  )

(provide 'lemon-theme)
