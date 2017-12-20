;A linear list is given. Eliminate from the list all elements from N to N steps, N-given

(defun removeN(l n1 n2)
	(cond
		((null l) nil)
		((eq (mod n2 n1) 0) (removeN (cdr l) n1 (+ 1 n2)))
		(t (cons (car l) (removeN (cdr l) n1 (+ 1 n2))))
	)
)

(defun removeN1(l n)
	(removeN l n 1)
)
