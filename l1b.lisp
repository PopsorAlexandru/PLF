;Write a function to test if a linear list of integer numbers has a "valley" aspect (a list has a valley
;aspect if the items decrease to a certain point and then increase. Eg. 10 8 6 17 19 20). A list must
;have at least 3 elements to fullfill this condition

(defun valley (l)
	(cond 
		((< (length l) 3) nil)
		((and (> (car l) (cadr l)) (< (cadr l) (caddr l))) (increasing (cdr l)))
		((> (car l) (cadr l)) (valley (cdr l)))
	)
)

(defun increasing (l)
	(cond
		((= (length l) 1) t)
		((>(car l) (cadr l)) nil)	
		((< (car l) (cadr l)) (increasing (cdr l)))
	)
)