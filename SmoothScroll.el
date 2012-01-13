; these two commands allow smooth scrolling with still cursor
; use C-, to scroll up, C-. to scroll down

; author: Petr Glotov
; modified: Takaaki Ishikawa

(defun scroll-one-down ()
  (interactive)
  (scroll-down 1)
  (line-move-visual -1))

(defun scroll-one-up ()
  (interactive)
  (scroll-up 1)
  (line-move-visual 1))

(global-set-key [(control ?,)] 'scroll-one-down)
(global-set-key [(control ?.)] 'scroll-one-up)

(provide 'smoothscroll)
