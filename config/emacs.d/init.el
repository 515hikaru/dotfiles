(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)
;;; (package-refresh-contents)
;;; basic config
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
(setq make-backup-files nil)
(setq auto-save-default nil)
(global-font-lock-mode t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq c-hungry-delete-key t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode 0)
(global-hl-line-mode t)
(show-paren-mode 1)
;;; theme
(package-install 'atom-dark-theme)
(require 'atom-one-dark-theme)
;;; Font
(let* ((size 15)
       (asciifont "Source Code Pro")
       (jpfont "Source Code Pro")
       (h (* size 10))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont)))
  (set-face-attribute 'default nil :family asciifont :height h)
  (set-fontset-font nil 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font nil 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font nil 'katakana-jisx0201 jp-fontspec)
  (set-fontset-font nil '(#x0080 . #x024F) fontspec) 
  (set-fontset-font nil '(#x0370 . #x03FF) fontspec))
;;; shell path exec
(package-install 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
(exec-path-from-shell-initialize))
;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-stylish-on-save t)
 '(package-selected-packages
   (quote
    (exec-path-from-shell exex-path-from-shell atom-dark-theme atom-one-dark-theme atom-one-dark intero))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
