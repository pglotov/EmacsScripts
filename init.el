;(custom-set-variables
; '(font-lock-mode t nil (font-lock))
; '(overwrite-mode (quote overwrite-mode-textual))
; '(pending-delete-mode t t)
; '(teach-extended-commands-p t)
; '(toolbar-captioned-p t))
;(custom-set-faces)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(complex-buffers-menu-p nil)
 '(display-time-mode t)
 '(font-lock-maximum-decoration 3)
 '(inhibit-startup-screen t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(paren-mode (quote paren) nil (paren))
 '(scroll-bar-mode (quote right))
 '(scss-compile-at-save nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "gray80" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(defun scroll-one-down ()
  (interactive)
  (scroll-down 1)
  (previous-line)
)
(global-set-key [(control ?,)] 'scroll-one-down)

(defun scroll-one-up ()
  (interactive)
  (scroll-up 1)
  (next-line)
)
(global-set-key [(control ?.)] 'scroll-one-up)

;(set-face-background 'default "gray80")
;(set-face-background 'modeline "gray80")
(set-background-color "gray80")


(global-set-key "\C-x\C-b" 'electric-buffer-list)
(line-number-mode t)
(column-number-mode t)
(display-time)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;always split horizontaly
(setq split-width-threshold nil)
(setq split-height-threshold 0)

(setq backup-directory-alist `(("." . "~/.saves")))

(setq web-mode-content-types-alist
  '(("jsx" . "\\.js[x]?\\'")))

(setq Buffer-menu-name-width 30)

(setq js-indent-level 2)
