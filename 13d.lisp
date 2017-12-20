;Write a function that deletes from a linear list of all occurrences of the maximum element

(defun maximum(l m)
	(cond
		((null l) m)
		((and (numberp (car l)) (> (car  l) m)) (maximum (cdr l) (car l)))
		(t (maximum (cdr l) m))
	)
)



(defun remo2 (l m)
	(cond
		((null l) nil)
		((eq (car l) m) (remo2 (cdr l) m))
		(t (cons (car l) (remo2 (cdr l) m)))
	)
)

(defun remo(l)
	(remo2 l (maximum l -9999))
)

