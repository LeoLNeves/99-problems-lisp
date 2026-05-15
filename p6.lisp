(defun is-palindrome (lst)
    (if (null lst) ; terminal case where list is empty
        t
        (if (null (cdr lst)) ; terminal case where list has 1 element
            t
            (if (equal (car lst) (car (last lst))) ; normal case -> compares 1st with last element
                (is-palindrome (cdr (butlast lst))) ; recursive call with list except 1st and last element
                nil))))

(print (is-palindrome '(a b c d e d c b a)))

;; OR -> solution using cond

(defun is-palindrome-v2 (lst)
    (cond 
        ((null lst) t)
        ((null (cdr lst)) t)
        ((equal (car lst) (car (last lst))) (is-palindrome-v2 (cdr (butlast lst))))
        (t nil)))

(print (is-palindrome-v2 '(a b c e e e c b a)))