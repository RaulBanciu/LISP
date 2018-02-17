(defun change(l)
	(cond
		((null l) nil)
		((and (numberp (car l))(= (mod (car l) 2) 0))(cons (+(car l) 1) (change(cdr l))))
		((listp (car l))(cons (change (car l)) (change (cdr l))))
		( t (cons (car l) (change(cdr l))))
	)
)

(defun change2(l)
	(cond
		((and (numberp l)(= (mod l 2) 0)) (+ l 1))
		((atom l) l)
		((listp l)(mapcar 'change2 l))
	)
)

(defun exchange(l)
	(mapcar 'change2 l)
)
