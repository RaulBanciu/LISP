(defun isMemberr(X L)
    (cond
        (
			(null L)
			nil
		)
		(
			(listp (car L))
			(or (isMemberr X (car L)) (isMemberr X (cdr L)))
		)
		(
			(eq (car L) x)
			t
		)
		(
			t
			(isMemberr X (cdr L))
		)
    )
)
