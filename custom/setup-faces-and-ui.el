(provide 'setup-faces-and-ui)

;; you won't need any of the bar thingies
;; turn it off to save screen estate
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(size-indication-mode t)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
;; taken from prelude-ui.el
(setq frame-title-format
      '("" invocation-name " - " (:eval (if (buffer-file-name)
                                                    (abbreviate-file-name (buffer-file-name))
                                                  "%b"))))

;; change font to Inconsolata for better looking text
;; remember to install the font Inconsolata first
(setq default-frame-alist '((font . "Inconsolata-11")))
;; set italic font for italic face, since Emacs does not set italic
;; face automatically
(set-face-attribute 'italic nil
                    :family "Inconsolata-Italic")

(set-background-color "black")
(set-foreground-color "white")
(set-face-attribute 'default nil :background "black")
(set-face-attribute 'default nil :foreground "white")
