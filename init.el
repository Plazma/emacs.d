(add-to-list 'load-path (expand-file-name "~/.emacs.d/themes/"))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(setq-default cursor-type 'bar)
(blink-cursor-mode 1)
(set-background-color "blue3")
(set-foreground-color "gray93")
(set-face-background 'region "black")

(setq custom-safe-themes t)
(setq-default tab-width 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq global-font-lock-mode nil)
(setq-default indent-tabs-mode nil)
(setq-default global-font-lock-mode nil)
(setq tab-stop-list (number-sequence 4 120 4) )
(setq-default c-basic-offset 4)
(setq c-basic-offset 4)
(setq c-default-style "linux")
(tool-bar-mode -1)
(setq tab-always-indent t)


(file-name-shadow-mode t)
(delete-selection-mode t)
(setq search-highlight t
      query-replace-highlight t)
(fset 'yes-or-no-p 'y-or-n-p)

;; Disable startup crap
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t
      initial-scratch-message
      ";;Scratchpad - Sketch your ideas in me!;;\n\n")
(require 'hl-line)
(global-hl-line-mode 1)
(require 'paren)
(show-paren-mode t)
(setq show-paren-style 'parentheses)
(setq x-select-enable-clipboard t)
(setq mouse-drag-copy-region t)
(global-set-key [mouse-2] 'mouse-yank-at-click)
(setq default-major-mode 'text-mode)
(setq standard-indent 4)
;; colors
;; bg = khaki1 / fg = black
;; bg = blue2 / fg = white
;; bg = LightYellow2 / black
;(set-background-color "blue2")
;(set-foreground-color "white")

;; fix asm mode

(defun my-asm-mode-hook ()
  (local-unset-key (vector asm-comment-char))
  (setq tab-always-indent (default-value 'tab-always-indent)))

(add-hook 'asm-mode-hook #'my-asm-mode-hook)


;; OS X Paste Functions for OS X Clipboard
