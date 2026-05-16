(defun is-palindrome (lst)
    (cond 
        ((null lst) t)
        ((null (cdr lst)) t)
        ((equal (car lst) (car (last lst))) (is-palindrome (cdr (butlast lst))))
        (t nil)))

; (print (is-palindrome '(a b c e e e c b a)))