(defun sublists(L)
	(cond
		(
			(null L) nil
		)
		(
			(listp (car L))
			(append (doSubLists (car L)) (sublists (cdr L)))
		)
		(
			t
			(sublists(cdr L))
		)
	)
)

(defun doSubLists(L)
	(cons L (sublists L))
)