(require 'chinese-pyim)
(require 'chinese-pyim-basedict)
(chinese-pyim-basedict-enable)

;;(require 'chinese-pyim-greatdict)
;;(chinese-pyim-greatdict-enable)


(setq-default pyim-english-input-switch-functions
              '(pyim-probe-dynamic-english
                pyim-probe-isearch-mode
                pyim-probe-program-mode
                pyim-probe-org-structure-template))

(setq-default pyim-punctuation-half-width-functions
              '(pyim-probe-punctuation-line-beginning
                pyim-probe-punctuation-after-punctuation))

;; 开启拼音搜索功能
(setq pyim-isearch-enable-pinyin-search t)

;; 使用 pupup-el 来绘制选词框
;; (setq pyim-page-tooltip 'popup)

;; 选词框显示5个候选词
(setq pyim-page-length 10)

;; 让 Emacs 启动时自动加载 pyim 词库
(add-hook 'emacs-startup-hook
          #'(lambda () (pyim-restart-1 t)))

(setq default-input-method "chinese-pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)
(global-set-key (kbd "C-c y") 'pyim-convert-code-at-point)
;;(glocal-set-key (kdb "C-c y d") 'pyim-delete-wo)
(setq default-input-method "chinese-pyim")
(setq pyim-default-scheme 'quanpin)
(setq pyim-page-tooltip 'popup)
(provide 'setup-pyim)
(setq pyim-page-tooltip 'pos-tip)
(setq x-gtk-use-system-tooltips t)
