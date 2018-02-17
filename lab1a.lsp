(defun nthElem(L N)
	(cond
		((<= N 0) nil)
		((eq N 1) (CAR L))
		(T (nthElem (CDR L) (- N 1)))))