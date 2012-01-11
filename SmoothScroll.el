; these two commands allow smooth scrolling with still cursor
; use C-, to scroll up, C-. to scroll down

; author: Petr Glotov

(defun scroll-one-down ()
  (interactive)
  (scroll-down 1)
  (forward-line -1)
)
(global-set-key [(control ?,)] 'scroll-one-down)

(defun scroll-one-up ()
  (interactive)
  (scroll-up 1)
  (forward-line 1)
)
(global-set-key [(control ?.)] 'scroll-one-up)
