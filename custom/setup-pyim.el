(require 'pyim)
(require 'pyim-basedict)
(pyim-basedict-enable)


(setq-default pyim-english-input-switch-functions
              '(pyim-probe-dynamic-english
                pyim-probe-isearch-mode
                pyim-probe-program-mode
                pyim-probe-org-structure-template))

(setq-default pyim-punctuation-half-width-functions
              '(pyim-probe-punctuation-line-beginning
                pyim-probe-punctuation-after-punctuation))

;; 开启拼音搜索功能
(pyim-isearch-mode 1)
;; 选词框显示9个候选词
(setq pyim-page-length 9)

;; 让 Emacs 启动时自动加载 pyim 词库
(add-hook 'emacs-startup-hook
          #'(lambda () (pyim-restart-1 t)))

(setq default-input-method "pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)
(global-set-key (kbd "C-c y") 'pyim-convert-code-at-point)
(setq pyim-default-scheme 'quanpin)
(setq pyim-page-tooltip 'popup)
(setq pyim-page-tooltip 'pos-tip)
(setq x-gtk-use-system-tooltips t)

(provide 'setup-pyim)
