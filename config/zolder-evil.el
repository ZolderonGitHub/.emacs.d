;; Evil
(use-package evil
  :config
  (evil-mode)
  (setq evil-normal-state-cursor '(box "#86f49a"))
  (setq evil-insert-state-cursor '(box "#7fbfff"))
  (setq evil-visual-state-cursor '(box "#c3a7ef"))
  :custom
  (evil-want-integration t)
  (evil-want-keybinding nil)
  (evil-vsplit-window-right t)
  (evil-split-window-below t)
  (evil-move-beyond-eol nil)
  (evil-mode-transient-mouse-selection t)
  )

(use-package evil-collection
  :after evil
  :config
  (setq evil-want-integration t)
  (evil-collection-init)
  )

(provide 'zolder-evil)
