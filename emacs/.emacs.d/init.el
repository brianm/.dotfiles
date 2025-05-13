(setq make-backup-files nil)
(setq inhibit-startup-message t)
(setq exec-path
      (append exec-path '("/usr/local/bin"
			  "/opt/homebrew/bin"
			  "~/.bin"
			  "~/bin")))
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
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
;;;(load-theme 'nord t)
;;;(load-theme 'tokyo t)

(setq kanagawa-themes-comment-italic nil)
(setq kanagawa-themes-keyword-italic nil)
(load-theme 'kanagawa-wave t)


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
 '(custom-safe-themes
   '("c20728f5c0cb50972b50c929b004a7496d3f2e2ded387bf870f89da25793bb44"
     "d2ab3d4f005a9ad4fb789a8f65606c72f30ce9d281a9e42da55f7f4b9ef5bfc6"
     "daa27dcbe26a280a9425ee90dc7458d85bd540482b93e9fa94d4f43327128077"
     default))
 '(package-selected-packages
   '(bind-key counsel flycheck ivy kanagawa-themes markdown-mode nord-theme))
 '(tool-bar-mode nil))
