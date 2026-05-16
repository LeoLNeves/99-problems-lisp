(load "p10.lisp")

(defun encode-modify (lst build)
    (if (null lst)
        build
        (if (null (cdr (car lst)))
            (encode-modify   (cdr lst)
                            (append build
                                    (car lst)))
            (encode-modify   (cdr lst) 
                            (append build 
                                    (list (encode-count (append (list 1)
                                                                (car lst)))))))))

(defun modify (lst)
    (if (null lst)
        ()
        (encode-modify   (pack lst) 
                        ())))

; (print (modify '(a a a a b c c a a d e e e e)))