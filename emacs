;; package-install
;; - starter-kit
;; - starter-kit-js
;; - color-theme

;; for git to be visible
(push "/usr/local/bin" exec-path)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(add-to-list 'default-frame-alist '(left . 750))
(add-to-list 'default-frame-alist '(top . 80))
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 130))

;; color-theme-select
(require 'color-theme)
(color-theme-goldenrod)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;;(desktop-save-mode 1)

;;(fset 'yes-or-no-p 'y-or-n-p)

;;(when (fboundp 'toggle-scroll-bar) (toggle-scroll-bar -1))

;;(setq visible-bell t)
;;(setq line-number-mode t)
;;(setq column-number-mode t)

;;(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

