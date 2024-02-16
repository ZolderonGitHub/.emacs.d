;; Modeline
;; A lot of this code comes from protesilaos dotfiles: https://github.com/protesilaos/dotfiles
;; (kill-local-variable 'mode-line-format)
;; (force-mode-line-update)

;; (defvar-local modeline-buffer-name
;;     '(:eval (format " %s " (propertize (buffer-name) 'face 'mode-line-buffer-id)))
;;   "Mode line variable to display buffer name")

;; (defvar-local modeline-major-mode
;;     '(:eval (format " %s " (symbol-name major-mode)))
;;   "Mode line variable to display major mode.")

;; (defvar-local modeline-buffer-status
;;     '(:eval (if (buffer-modified-p) (propertize " [+]" 'face 'mode-line-buffer-id)
;; 		  " [·]"))
;;   "Mode line variable to display buffer status.")

;; (dolist (construct '(modeline-buffer-name
;; 		     modeline-major-mode
;; 		     modeline-buffer-status
;; 		     ))
;;   (put construct 'risky-local-variable t))

;; (setq-default mode-line-format
;; 	      '("%e"
;; 		modeline-buffer-status
;; 		modeline-buffer-name
;; 		" "
;; 		mode-line-position-line-format
;; 		" "
;;                 " λ"
;; 		modeline-major-mode
;; 		))


;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format nil)

;; Don't forget to install the font-icons
(use-package doom-modeline
  :straight t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 25)
  (setq doom-modeline-hud nil)
  )

(provide 'zolder-modeline)

