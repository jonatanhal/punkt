;;;; DO NOT TOUCH!! :(
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style "linux")
 '(create-lockfiles nil)
 '(custom-enabled-themes (quote (kooten)))
 '(custom-safe-themes
   (quote
    ("9ab634dcc9131f79016c96c4955298409649f6538908c743a8a9d2c6bc8321ef" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "c3d843722b3bf87f037a6d54cdf0042ce4b2150bd24af4e32eb7342f782bdd44" "5999e12c8070b9090a2a1bbcd02ec28906e150bb2cdce5ace4f965c76cf30476" "419637b7a8c9cb43f273980f0c9879c0cbadace6b38efac0281e031772c84eb2" default)))
 '(default (quote truncate-lines) t)
 '(erc-nick "jntnhl")
 '(erc-server "leguin.freenode.net")
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(scroll-error-top-bottom t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
 '(scroll-error-top-bottom t)
 '(default 'truncate-lines t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;;; Globally set package-safe emacs stuff
(global-set-key [f8] (quote toggle-menu-bar-mode-from-frame))

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;;;; Package-related stuff :)
(add-to-list 'auto-mode-alist '("\\.asm\\'" . nasm-mode))
(global-set-key (kbd "C-h x") #'x86-lookup)
(setq x86-lookup-pdf "~/Documents/64-ia-32-architectures-software-developer-manual-325462.pdf")
(setq x86-lookup-browse-pdf-function 'x86-lookup-browse-pdf-evince)

;; theme :D
(load-theme 'arjen-grey t)
