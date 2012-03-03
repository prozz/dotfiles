;; package-install
;; - starter-kit
;; - starter-kit-js
;; - starter-kit-ruby
;; - color-theme

;; magit goes wild without it, possibly useful for other things too
(push "/usr/local/bin" exec-path)

;; set up packages repository
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; window initial size and positioning
(add-to-list 'default-frame-alist '(left . 750))
(add-to-list 'default-frame-alist '(top . 80))
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 130))

;; color-theme-select
(require 'color-theme)
(color-theme-goldenrod)

;; no more dangling backups everywhere
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; removes unneeded whitespaces!
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; easy windows switch
(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

;; TODO: yasnippet, rinari? (ruby), css-mode, javascript
