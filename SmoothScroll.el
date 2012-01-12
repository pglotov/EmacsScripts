; these two commands allow smooth scrolling with still cursor
; use C-, to scroll up, C-. to scroll down

; author: Petr Glotov
; modified: Takaaki Ishikawa

(defvar smoothscroll-sticked-point (current-column))
(run-with-idle-timer
 0.5 t '(lambda () (setq smoothscroll-sticked-point (current-column))))

(defun scroll-one-down ()
  (interactive)
  (scroll-down 1)
  (forward-line -1)
  (move-to-column smoothscroll-sticked-point))

(defun scroll-one-up ()
  (interactive)
  (scroll-up 1)
  (forward-line 1)
  (move-to-column smoothscroll-sticked-point))

(global-set-key [(control ?,)] 'scroll-one-down)
(global-set-key [(control ?.)] 'scroll-one-up)
