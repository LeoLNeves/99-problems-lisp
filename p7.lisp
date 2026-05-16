(defun normalize (lista12)
    (cond
        ((atom lista12) (list lista12))
        ((null (cdr lista12)) (normalize (car lista12)))
        (t (append (normalize (car lista12)) (normalize (cdr lista12))))))

; (print (normalize '(a (b (c d) e))))