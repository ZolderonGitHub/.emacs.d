(use-package projectile
  :defer 2
  :config
  (projectile-mode 1)
  (setq projectile-project-search-path '("D:/dev/"))
  )

(defun read-lines (filePath)
  "Return a list of lines of a file at filePath."
  (with-temp-buffer
    (insert-file-contents filePath)
    (split-string (buffer-string) "\n" t)))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "Zoldemacs")
  (setq dashboard-startup-banner "~/.emacs.d/images/akagi.png")
  (setq dashboard-image-banner-max-height (/ (frame-pixel-height) 3))
  (setq dashboard-footer-messages (read-lines "~/.emacs.d/quotes/lenin.txt"))
  (setq dashboard-center-content t)
  (setq dashboard-items '((recents . 5)
                          (projects . 5)
                          (bookmarks . 5)
                          ))
  )

(provide 'zolder-project)
