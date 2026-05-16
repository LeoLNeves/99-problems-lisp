(load "p9.lisp") ; pack function

(defun encode-count (lst)
    (if (null (cdr (cdr lst)))
        lst
        (encode-count (append  (list (+ 1 (car lst)))
                        (cdr (cdr lst))))))

(defun encode-build (lst build)
    (if (null lst)
        build
        (encode-build   (cdr lst) 
                        (append build 
                                (list (encode-count (append    (list 1)
                                                        (car lst))))))))

(defun encode (lst)
    (if (null lst)
        ()
        (encode-build   (pack lst) 
                        ())))

(print (encode '(a a a a b c c a a d e e e e)))
