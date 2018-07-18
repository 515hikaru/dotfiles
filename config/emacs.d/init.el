(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)
(package-refresh-contents)
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
;;; Theme
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
;;; open junk file
(require 'open-junk-file)
(global-set-key "\C-xj" 'open-junk-file)
;;; helm
(require 'helm-config)
(global-set-key (kbd "C-x C-f") 'helm-for-files)
;;; auto-complete
(when (require 'auto-complete-config nil t)
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default)
  (setq ac-use-menu-map t)
  (setq ac-ignore-case nil))
;;; python
(require 'jedi)
(require 'epc)
(require 'python)
(setenv "PYTHONPATH" "/Users/hikaru/miniconda3/lib/python3.6/site-packages")
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("78496062ff095da640c6bb59711973c7c66f392e3ac0127e611221d541850de2" default)))
 '(package-selected-packages
   (quote
    (jedi auto-complete helm atom-dark-theme open-junk-file atom-one-dark-theme exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
