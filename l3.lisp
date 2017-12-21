(defun sbst (l e ne)
	(cond 
		((null l) nil)
		((and (atom l) (eq l e)) ne)
		((and (atom l) (not(eq l e))) l)
		(t (mapcar #'(lambda(a)(sbst a e ne)) l))
	)
)