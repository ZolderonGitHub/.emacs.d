;; Package manager
;; (require 'package)
;; (setq package-archives '(("melpa" . "https://melpa.org/packages/")
;;       ("org" . "https://orgmode.org/elpa/")
;;       ("elpa" . "https://elpa.gnu.org/packages/")))
;; (package-initialize)

;; (unless package-archive-contents
;;   (package-refresh-contents))

;; (unless (package-installed-p 'use-package)
;;   (package-install 'use-package))

;; (require 'use-package)
;; (setq use-package-always-ensure t)
;; (setq use-package-verbose nil)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(provide 'zolder-package-manager)
