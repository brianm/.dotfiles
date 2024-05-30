(setq make-backup-files nil)
(setq inhibit-startup-message t)
(setq exec-path
      (append exec-path '("/usr/local/bin"
			  "/opt/homebrew/bin"
			  "~/.bin"
			  "~/bin")))
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'custom-theme-load-path
	     (expand-file-name "~/.emacs.d/themes/"))

(load-library "visual-wrap-column" )
(load-library "longlines")
(load-library "unfill-paragraph")
(load-library "smarter-ca")

(ivy-mode)
(setq default-directory "~/")
(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)
(setq default-tab-width 4)
; (load-theme 'nord t)
(load-theme 'tokyo t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "apple" :family "Berkeley Mono")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(package-selected-packages '(counsel ivy markdown-mode nord-theme))
 '(tool-bar-mode nil))
