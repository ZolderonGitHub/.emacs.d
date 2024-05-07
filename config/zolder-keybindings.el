;; Which key
(use-package which-key
  :config
  (which-key-mode 1)
  :custom
  (which-key-side-window-location 'bottom)
  (which-key-idle-delay 0.8))

;; Keybindings
(use-package general
   :config
   (general-evil-setup)
   (general-create-definer zolder/leader-keys
			   :states '(normal insert visual emacs)
			   :keymaps 'override
			   :prefix "SPC"
			   :global-prefix "M-SPC")
   (zolder/leader-keys
    ;; Basic
    "f" '(find-file :wk "Find file")
    ";" '(comment-line :wk "Comment lines")
    "SPC" '(execute-extended-command :wk "Execute emacs command")

    ;; Help related
    "t" '(:ignore t :wk "Help")
    "t f" '(describe-function :wk "Describe function")
    "t v" '(describe-variable :wk "Describe variable")

    ;; Buffer related
    "b" '(:ignore t :wk "buffer")
    "b b" '(switch-to-buffer :wk "Switch buffer")
    "b i" '(ibuffer :wk "List of buffers")
    "b k" '(kill-this-buffer :wk "Kill this buffer")
    "b n" '(next-buffer :wk "Next buffer")
    "b p" '(previous-buffer :wk "Previous buffer")
    "b r" '(revert-buffer :wk "Reload buffer")

    "p" '(consult-buffer :wk "Switch buffer/file")
    "r" '(consult-ripgrep :wk "Search in project")

    ;; Search related
    ":" '(query-replace :wk "Search and Substitute")

    ;; Compilation related
    "m" '(compile :wk "Compile")

    ;; Window related
    "v" '(evil-window-split :wk "Horizontal split window")
    "s" '(evil-window-vsplit :wk "Vertical split window")
    "q" '(evil-window-delete :wk "Close window")
    "h" '(evil-window-left :wk "Window left")
    "j" '(evil-window-down :wk "Window down")
    "k" '(evil-window-up :wk "Window up")
    "l" '(evil-window-right :wk "Window right")

    ;; Git related
    "g" '(:ignore t :wk "Git")
    "g g" '(magit :wk "Launch Magit")
    "g c" '(magit-commit :wk "Magit Commit")
    "g w" '(with-editor-finish :wk "Save Commit")

    ;; Elisp related
    "x" '(:ignore t :wk "Evaluate")
    "x b" '(eval-buffer :wk "Evaluate buffer")
    "x e" '(eval-expression :wk "Evaluate elisp expression")
    "x r" '(eval-region :wk "Evaluate elisp in region")

    ;; Projectiel related
    "y" '(projectile-command-map :wk "Projectile")
    ))

(provide 'zolder-keybindings)
