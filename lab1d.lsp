(defun checkIfAtom(L N)
    (cond
        ( (null L) nil)
        ( (and (atom N) (eq (car L) N)) T)
        ( (listp (car L)) 
                        (or (checkIfAtom (car L) N) (checkIfAtom(cdr L) N)))
        ( T (checkIfAtom (cdr L) N) )
    )
)


(defun transformSet (L) 
    (cond
        ((null L) nil)
        ((checkIfAtom (cdr L) (car L)) (transformSet (cdr L)))
        (T (cons (car L) (transformSet (cdr L))))
    )
)