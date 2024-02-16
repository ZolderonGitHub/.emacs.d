;; Memory
;; (defvar last-file-name-handler-alist file-name-handler-alist)
;; (setq gc-cons-threshold 402653184
;;       gc-cons-percentage 0.6
;;       file-name-handler-alist nil)

;; Startup
(add-hook 'emacs-startup-hook
	  #'(lambda()
	      (message "Startup in %s sec with %d garbage collections"
		       (emacs-init-time "%.2f")
		       gcs-done)))
(setq initial-scratch-message ";; Welcome aboard Sailor!\n;; Don't forget to be free!\n")

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Backups
(setq make-backup-files nil)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups/")))

;; Default directory
(setq default-directory "~/")

;; Sane defaults
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(setq-default cursor-type 'bar) 
(recentf-mode 1)
(global-goto-address-mode 1)
(delete-selection-mode 1)
(save-place-mode 1)
(electric-pair-mode 1)
(setq-default electric-indent-inhibit)
(electric-indent-mode 1)
(show-paren-mode 1)
(setq ring-bell-function 'ignore)
(setq frame-resize-pixelwise t)
(setq window-resize-pixelwise nil)
(set-default 'truncate-lines t)
(setq create-lockfiles nil) 

;; UTF-8
(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Horizontal line at cursor point.
(global-hl-line-mode -1)

;; Better scrolling
(setq scroll-step 1)
(setq scroll-margin 8)
(setq scroll-conservatively 9999)

;; Tabs being tabs
(setq c-basic-offset 4
      c-default-style "bsd")
(setq sentence-end-double-space nil)
(setq-default indent-tabs-mode nil
              tab-width 4
              inhibit-splash-screen t
              compilation-scroll-output t)

;; lines
(setq next-line-add-newlines nil)

(setq
 mouse-wheel-follow-mouse 't
 mouse-wheel-progressive-speed nil
 mouse-wheel-scroll-amount '(2))

;; Having a clean init.el
(setq custom-file (locate-user-emacs-file "~/.emacs.d/custom-vars.el"))
(load custom-file t)

(setq use-dialog-box nil)

(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)

;; Dired
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

;; Daemon
(setq default-frame-alist '(
                            (font . "Iosevka 12")
                            (vertical-scroll-bars)
                            (width . 100)
                            (height . 50)
                            ))

;; Appearance
(set-face-attribute 'default  nil :font "Iosevka 12")
(set-face-attribute 'fixed-pitch  nil :font "Iosevka 12")
(set-face-attribute 'variable-pitch  nil :font "Iosevka 12")

;; Package directory
(add-to-list 'load-path "~/.emacs.d/packages/")

;; Config directory
(add-to-list 'load-path "~/.emacs.d/config/")

(require 'zolder-package-manager)
(require 'zolder-evil)
(require 'zolder-keybindings)
(require 'zolder-completion)
(require 'zolder-project)
(require 'zolder-version-control)
(require 'zolder-org)
(require 'zolder-modeline)
(require 'zolder-themes)

;; Language support
(require 'odin-mode)

(load-theme 'doom-nord)

;; Frames
(modify-all-frames-parameters
 '((right-divider-width . 10)
   (internal-border-width . 10)))
(dolist (face '(window-divider
                window-divider-first-pixel
                window-divider-last-pixel))
  (face-spec-reset-face face)
  (set-face-foreground face (face-attribute 'default :background)))
(set-face-background 'fringe (face-attribute 'default :background))

;; Memory
;; (setq gc-cons-threshold 16777216
;;       gc-cons-percentage 0.1
;;       file-name-handler-alist last-file-name-handler-alist)
