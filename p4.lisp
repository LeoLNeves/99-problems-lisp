(defun count-num-of-el (lst n)
    (if (null (cdr lst))
        n
        (count-num-of-el (cdr lst) (+ n 1))))

(defun num-of-elem (lst)
    (if (null lst)
        0
        (count-num-of-el lst 1)))

(print (num-of-elem '(a b c d e f g)))