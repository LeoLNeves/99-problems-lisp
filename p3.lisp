(defun element-at (lst n)
    (if (= n 1)
        (car lst)
        (element-at (cdr lst) (- n 1))))

(print (element-at '(a b c d e ) 3))