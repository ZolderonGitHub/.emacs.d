;; Syntax highlighting
(use-package tree-sitter
  :straight t)
(use-package tree-sitter-langs
  :after tree-sitter)
(global-tree-sitter-mode)

(provide 'zolder-highlighting)
