(use-package python
  :defer t
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python3" . python-mode)
  :config
  ;; for debug
  (require 'dap-python))

(use-package pyvenv
  :ensure t
  :config
  (setenv "WORKON_HOME" (expand-file-name "~/opt/miniconda3/envs"))
  ;; (setq python-shell-interpreter "python3")  ; （可选）更改解释器名字
  (pyvenv-mode t)
  ;; （可选）如果希望启动后激活 miniconda 的 base 环境，就使用如下的 hook
  :hook
  (python-mode . (lambda () (pyvenv-workon "..")))
)

(use-package lsp-pyright
  :ensure t
  :config
  :hook
  (python-mode . (lambda ()
		  (require 'lsp-pyright)
		  (lsp-deferred))))

(provide 'init-python)
