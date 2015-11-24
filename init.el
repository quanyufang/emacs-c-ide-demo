(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(exec-path
   (quote
    ("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/local/bin"))))
(defalias 'yes-or-no-p 'y-or-n-p)

(defconst demo-packages
  '(anzu
    company
    duplicate-thing
    ggtags
    helm
    helm-gtags
    helm-projectile
    helm-swoop
    function-args
    clean-aindent-mode
    comment-dwim-2
    dtrt-indent
    ws-butler
    iedit
    yasnippet
    smartparens
    projectile
    volatile-highlights
    undo-tree
    zygospore
    workgroups2
    expand-region
    ibuffer-vc
    dired+
    recentf-ext
    ztree
    vlf
    shell-pop
    diff-hl
;;    magit
    flycheck
    flycheck-tip
    nyan-mode
    golden-ratio
    highlight-numbers
    discover-my-major
    rainbow-mode
    help+
    help-fns+
    help-mode+
    ;;common lisp
    slime
    slime-company))

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package demo-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)



(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/manual-install/unicad")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: workgroups2               ;;
;;                                    ;;
;; GROUP: Convenience -> Workgroups   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'workgroups2)
;; Change some settings
(workgroups-mode 1)


;; this variables must be set before load helm-gtags
;; you can change to any prefix key of your choice
(setq helm-gtags-prefix-key "\C-cg")



(require 'custom-built-in-functions)
(require 'setup-convenience)
(require 'setup-files)
(require 'setup-text)
(require 'setup-data)
(require 'setup-external)
(require 'setup-communication)
(require 'setup-programming)
(require 'setup-applications)
(require 'setup-development)
(require 'setup-environment)
(require 'setup-faces-and-ui)
(require 'setup-help)
(require 'setup-helm)
(require 'setup-helm-gtags)
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)


(helm-autoresize-mode t)


(windmove-default-keybindings)

;; function-args
(require 'function-args)
(fa-config-default)
(define-key c-mode-map  [(control tab)] 'moo-complete)
(define-key c++-mode-map  [(control tab)] 'moo-complete)
(define-key c-mode-map (kbd "M-o")  'fa-show)
(define-key c++-mode-map (kbd "M-o")  'fa-show)

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-semantic company-backends)
;(define-key c-mode-map  [(tab)] 'company-complete)
;(define-key c++-mode-map  [(tab)] 'company-complete)
(define-key c-mode-map  [(control tab)] 'company-complete)
(define-key c++-mode-map  [(control tab)] 'company-complete)

;; company-   c-headers
(add-to-list 'company-backends 'company-c-headers)

;;这一行不能工作，我需要研究一下
;(add-to-list 'company-c-headers-path-system "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/include/c++/4.2.1/")

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)


(global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; Package: clean-aindent-mode
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

;; Package: dtrt-indent
(require 'dtrt-indent)
(dtrt-indent-mode 1)

;; Package: ws-butler
(require 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Package: smartparens
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)
(smartparens-global-mode 1)


;(require 'helm-projectile)
;(helm-projectile-on)
(setq projectile-completion-system 'helm)
(setq projectile-indexing-method 'alien)

;; Package zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'php-mode)


