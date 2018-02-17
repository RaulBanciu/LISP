(defun removeN(l n c)
	(cond
		((and (numberp l)(= (mod c n) 0)) l)
		((and (numberp l)(not (= (mod c n) 0))) nil)
		(t (mapcar #'(lambda(a b)(removeN a n '+1 b)) l c))
		)
	)

(trace removeN)