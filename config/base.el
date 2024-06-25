(menu-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(setq make-backup-files nil)

(setq backup-directory-alist
      `(("." . , (concat user-emacs-directory "backups"))))

(add-hook 'prog-mode-hook
	        (lambda () (interactive)
	          (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

(setq-default tab-width 2)

(show-paren-mode t)
(electric-pair-mode 1)

(provide 'base)
