(defun reverse-lst (lst)
    (cond 
        ((null lst) ())
        (t (append (last lst) (reverse-lst (butlast lst))))))

(print (reverse-lst '(a b c d e f g h i)))