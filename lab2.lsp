(defun rev(l1 rez)
	(cond 
		((null l1) rez)
		((not (null l1)) (rev (cddr l1) (cons (car l1) (cons (cadr l1) rez))))
	)
)

(defun sub_arb_st(l1 s d rez)
	(cond
		((>= s d) rez)
		((< s d) (sub_arb_st (cddr l1) (+ s 1) (+ d (cadr l1) ) (cons (car l1) (cons (cadr l1) rez))))
	)
)

(defun arb_st(l1)
	(rev (sub_arb_st (cddr l1) 1 (cadr l1) '()) '())
)

(defun sub_arb_dr(l1 s d rez)
	(cond
		((>= s d) l1)
		((< s d) (sub_arb_dr (cddr l1) (+ s 1) (+ d (cadr l1) ) (cons (car l1) (cons (cadr l1) rez))))
	)
)

(defun arb_dr(l1)
	(sub_arb_dr (cddr l1) 1 (cadr l1) '())
)

(defun postorder(L)
	(cond 
			(
				(eq (cadr L) 2) (append (postorder(arb_st L))  (postorder(arb_dr L)) (cons (car L) nil))
			)
			(
				(eq (cadr L) 1)	(append (postorder(arb_dr L)) (cons (car L) nil))
			)
			(
				(eq (cadr L) 0)	(cons (car L) nil)
			)
			(
				(null L) nil
			)
	)
)