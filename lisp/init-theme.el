(setq custom-nw-file (expand-file-name "custom-nw.el" user-emacs-directory))
(setq custom-gui-file (expand-file-name "custom-gui.el" user-emacs-directory))

(if (display-graphic-p)
	(progn
	  (setq custom-file custom-gui-file)
          ; (add-to-list 'default-frame-alist '(ns-appearance . dark)) ; macOS 下让窗口使用暗色主题
	  ;; other settings
        )
  (progn
	(setq custom-file custom-nw-file)
        ;; other settings
	))

(load custom-file)

(provide 'init-theme)
