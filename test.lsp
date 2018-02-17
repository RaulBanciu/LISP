(defun last_el(l)
	(cond
		((and (null (cdr l)) (not (numberp (car l)))) t)
				((and (null (cdr l)) (numberp (car l))) nil)
		(t (last_el (cdr l)))
	)
)

(defun liste(l)
	(cond
		((numberp l) 0)
		((and (listp l) (last_el l)) (+ 1 (liste2 l)))
		((and (listp l) (not (last_el l))) (liste2 l))
		((atom l) 0)
	)
)

(defun liste2(l)
	(apply '+ (mapcar 'liste l))
)

(trace liste2)
(trace liste)
(liste2 '(A (B 2) (1 C 4) (D 1 (6 (5 T) F))((G 4) (6 5))F))