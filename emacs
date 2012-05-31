(add-to-list 'load-path "~/.emacs.d")

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-bindings
                      clojure-mode
                      clojure-test-mode
                      auto-complete
                      ac-slime
                      rainbow-delimiters
                      color-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


; no more dangling backups everywhere
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

; removes unneeded whitespaces!
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;(load-theme 'zenburn t)
(require 'color-theme)
(color-theme-goldenrod)

(menu-bar-mode 1)

; window initial size and positioning
(add-to-list 'default-frame-alist '(left . 750))
(add-to-list 'default-frame-alist '(top . 80))
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 130))

; easy windows switch (s means command key on mac, replace with M- if needed)
(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-up] 'windmove-up)
(global-set-key [s-down] 'windmove-down)

(require 'auto-complete-config)
(ac-config-default)

; clojure
(global-rainbow-delimiters-mode 1)
(global-set-key (kbd "C-c C-j") 'clojure-jack-in)
(fset 'compile-and-goto-repl "\C-x\C-s\C-c\C-k\C-c\C-z")
(global-set-key [f6] 'compile-and-goto-repl)
(setq lisp-indent-offset 2)

(winner-mode 1)
(desktop-save-mode 1)
(savehist-mode 1)

;(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
;; magit goes wild without it, possibly useful for other things too
;(push "/usr/local/bin" exec-path)
;; clojure lein is not visible without this hack, clever!
;(setenv "PATH" (shell-command-to-string "echo $PATH"))

(find-file "~/todo.org")
(find-file "~/.emacs")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
