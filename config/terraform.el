(use-package flycheck
  :ensure t
  :config
  (add-hook 'terraform-mode-hook 'flycheck-mode))

(use-package company
  :ensure t
  :config
  (setq company-show-numbers t)
  (setq company-tooltip-align-annotations t)
  (setq company-tooltip-flip-when-above t)
  (global-company-mode))

(use-package company-quickhelp
  :ensure t
  :init
  (company-quickhelp-mode 1)
  (use-package pos-tip
    :ensure t))

(use-package terraform-mode :ensure t)

(require 'eglot)

(add-hook 'terraform-mode-hook 'eglot-ensure)


(provide 'terraform)
