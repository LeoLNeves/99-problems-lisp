(defun find-last (lst)
    (if (null (cdr lst))
        lst
        (find-last (cdr lst))))

; (print (find-last '(a b c d)))
