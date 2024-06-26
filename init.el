(require 'package)
(add-to-list 'package-archives
	           '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("elpa" . "https://elpa.gnu.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(unless (package-installed-p 'eglot)
  (package-install 'eglot))

(require 'use-package)
(setq use-package-always-ensure t)

;; THEME
(unless (package-installed-p 'dracula-theme)
  (package-refresh-contents)
  (package-install 'dracula-theme))

(load-theme 'dracula t)

(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-j" . centaur-tabs-backward)
  ("C-l" . centaur-tabs-forward))

;; (use-package project :ensure t)

(add-to-list 'load-path "~/.emacs.d/config")

(require 'base)
(require 'typescript)
(require 'golang)

;; TREE-SITTER

(use-package tree-sitter
  :ensure t
  :config
  ;; activate tree-sitter on any buffer
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

;; APHELEIA
(use-package apheleia
  :ensure t
  :config
  (apheleia-global-mode +1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(centaur-tabs tree-sitter-langs tree-sitter project)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
