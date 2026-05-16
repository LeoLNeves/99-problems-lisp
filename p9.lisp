(defun pack-build (lst build)
    (if (null lst)
        build
        (if 
            (equal  (car lst)
                    (car (last (car (last build)))))
            (pack-build (cdr lst)
                        (append (butlast build)
                                (list   (append (car (last build))
                                                (list (car lst))))))
            (pack-build (cdr lst)
                        (append build
                                (list (list (car lst))))))))

(defun pack (lst)
    (if (null lst)
        ()
        (pack-build (cdr lst) 
                    (list (list (car lst))))))

; (print (pack '(a a a a b c c a a d e e e e)))
