(defun removeAtoms(l X)
	(cond 
	((and (atom l)(not (equal l X))) (list l))
	((and (atom l)(equal l X)) nil)
	(t (list (mapcan #'(lambda (a)(removeAtoms a X)) l)))
	)
)

(defun removeFinal(l X)
	(car (removeAtoms l X))	
)