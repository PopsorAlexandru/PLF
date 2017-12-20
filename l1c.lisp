;) Build a function that returns the minimum numeric atom from a list, at any level

(defun  lin(l)
	(cond
		((null l) nil)
		((numberp (car l)) (cons (car l) (lin (cdr l))))
		((atom (car l)) (lin (cdr l)))
		(t (append (lin (car l)) (lin (cdr l))))
	)
)

(defun minimum(l m)
	(cond
		((null l) m)
		((< (car (lin l)) m) (minimum (cdr (lin l)) (car (lin l))))
		(t (minimum (cdr (lin l)) m))
	)
)

(defun minimum1 (l)
	(minimum l 9999)
)


 

		
  