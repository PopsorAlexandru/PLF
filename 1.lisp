;For a given tree of type (A 2 B 0 C 2 D 0 E 0) return the path from the root node to a certain given node X

(defun leftTree(l n m)
	(cond
		((null l) nil)
		((eq n (+ m 1)) nil)
		(t (cons (car l) (cons (cadr l) (leftTree (cddr l) (+ n 1) (+ (cadr l) m)))))
	)
)

(defun left(l)
	(cond 
		((null l) nil)
		(t (leftTree (cddr l) 0 0))
	)
)
		
(defun rightTree(l n m)
	(cond
		((null l) nil)
		((eq n (+ m 1)) l)
		(t (rightTree (cddr l) (+ 1 n) (+ (cadr l) m)))
	)
)

(defun right(l)
	(cond 
		((null l) nil)
		(t (rightTree (cddr l) 0 0))
	)
)

(defun is_member(l elem)
	(cond
		((null l) nil)
		((eq (car l) elem) t)
		(t (is_member (cdr l) elem))
	)
)

(defun path (l node)
	(cond
		((null l) nil)
		((eq (car l) node) (list node))
		((is_member (left l) node) (cons (car l) (path (left l) node)))
		((is_member (right l) node) (cons (car l) (path (right l) node)))
		(t nil)
	)
)


		
