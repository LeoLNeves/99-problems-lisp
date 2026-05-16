(defun compress-build (lst build)
    (if (null lst)
        build
        (if (equal (car lst) (car (last build)))
            (compress-build (cdr lst) build)
            (compress-build (cdr lst) (append build (list (car lst)))))))

(defun compress (lst)
    (compress-build lst ()))

(print (compress '(a a a a b c c a a d e e e e)))