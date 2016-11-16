(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-stickyfunc-mode 1)

(semantic-mode 1)

(defun alexott/cedet-hook ()
  (local-set-key "\C-c\C-j" 'semantic-ia-fast-jump)
  (local-set-key "\C-c\C-s" 'semantic-ia-show-summary))

(add-hook 'c-mode-common-hook 'alexott/cedet-hook)
;; (add-hook 'c-mode-hook 'alexott/cedet-hook)
;; (add-hook 'c++-mode-hook 'alexott/cedet-hook)


(add-hook 'c-mode-hook
          (lambda()
            (c-set-style 'gnu)
            (define-key php-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
            (define-key php-mode-map (kbd "C-j") 'helm-gtags-select)
            (define-key php-mode-map (kbd "M-.") 'helm-gtags-dwim)
            (define-key php-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
            (define-key php-mode-map (kbd "M-*") 'helm-gtags-find-rtag)
            (define-key php-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
            (define-key php-mode-map (kbd "C-c >") 'helm-gtags-next-history)
            ))


;; Enable EDE only in C/C++
(require 'ede)
(global-ede-mode)

(require 'ecb)

(provide 'setup-cedet)
