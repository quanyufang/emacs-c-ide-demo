(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq gc-cons-threshold 400000000)
(setq inhibit-startup-message t)
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2013/bin/x86_64-darwin/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("8d1e447fea4fc82aac533ca87be3f120daffc2905229c01f07ba18ad1edcc376" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "f0d8af755039aa25cd0792ace9002ba885fd14ac8e8807388ab00ec84c9497d7" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(exec-path
   (quote
    ("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/local/bin" "~/.emacs.d/manual-install/mew-6.7/bin" "/Library/TeX/Distributions/Programs/texbin" "/Library/TeX/texbin/xelatex")))
 '(fci-rule-color "#d6d6d6")
 '(line-number-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#c82829")
     (40 . "#f5871f")
     (60 . "#eab700")
     (80 . "#718c00")
     (100 . "#3e999f")
     (120 . "#4271ae")
     (140 . "#8959a8")
     (160 . "#c82829")
     (180 . "#f5871f")
     (200 . "#eab700")
     (220 . "#718c00")
     (240 . "#3e999f")
     (260 . "#4271ae")
     (280 . "#8959a8")
     (300 . "#c82829")
     (320 . "#f5871f")
     (340 . "#eab700")
     (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil))
(defalias 'yes-or-no-p 'y-or-n-p)

(defconst packages-need
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
    slime-company
    jedi
    php-mode
    highlight-symbol
    color-theme-sanityinc-tomorrow
    grandshell-theme
    info+
    company-c-headers
    psvn
    ;; python
    company-jedi
    markdown-mode
    markdown-mode+
    ;; mew
    w3m
    ;;java
    eclim
    company-emacs-eclim
    ;;ac-emacs-eclim
    column-enforce-mode
    ))

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package packages-need)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)



(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/manual-install/unicad")
(add-to-list 'load-path "~/.emacs.d/manual-install/mew-6.7")
(add-to-list 'load-path "~/.emacs.d/manual-install/php-auto-yasnippets")
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
(require 'mylib)
(require 'setup-convenience)
(require 'setup-files)
(require 'setup-text)
(require 'setup-data)
(require 'setup-external)
(require 'setup-communication)
(require 'setup-emacs-eclim)
(require 'setup-programming)
(require 'setup-applications)
(require 'setup-development)
(require 'setup-environment)
(require 'setup-faces-and-ui)
(require 'setup-help)
(require 'setup-helm)
(require 'setup-helm-gtags)
;; (require 'setup-ggtags)
;; (require 'setup-cedet)
(require 'setup-editing)

;; make sure that directory snippets needed exists
(insure-dir "~/.emacs.d/snippets")

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

;; Package: dtrt-indent
(require 'dtrt-indent)
(dtrt-indent-mode 1)

;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)


;; Package zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
;(setenv "LC_CTYPE" "en_US.UTF-8")
(global-set-key (kbd "C-x w f") 'toggle-frame-maximized)

(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell
         (replace-regexp-in-string "[[:space:]\n]*$" ""
                                   (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(when (equal system-type 'darwin) (set-exec-path-from-shell-PATH))
(put 'narrow-to-region 'disabled nil)

;(setq mac-option-modifier 'super)
;(setq mac-command-modifier 'meta)

