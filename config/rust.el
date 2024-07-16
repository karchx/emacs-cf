(use-package flycheck
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'flycheck-mode))

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

(use-package rust-mode :ensure t)

(require 'eglot)

(add-hook 'rust-mode-hook 'eglot-ensure)

;; Organization imports
(add-hook 'before-save-hook
          (lambda ()
            (call-interactively 'eglot-code-action-organize-imports))
          nil t)

(provide 'rust)
