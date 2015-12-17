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
    slime-company
    company-c-headers
    scala-mode
    scala-mode2
    ;;jdee
    auto-complete))

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package demo-packages)
    (unless (package-installed-p package)
      (package-install package))))

(provide 'setup-need-packages)
;;; setup-need-packages.el ends here
