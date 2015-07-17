;

(defun println (s)
  (format t "~S~$" s #\linefeed)
)

(println (eq t (= 1 1)))         ; T
(println (string-equal "A" "A")) ; T

; car : contents of address register
(println (car (cons 1 2))) ; 1

; cdr : contents of decrement register
(println (cdr (cons 1 2))) ; 2

; quote ` : a template of a data structure to be built
(println (eq (quote a) `a)) ; T

; apply
(println (apply '+ `(1 2 3)))     ; 6
(println (apply '+ '(1 2 3)))     ; 6
(println (apply '+ (list 1 2 3))) ; 6

(println (funcall '+ 1 2 3))      ; 6
(println (+ 1 2 3))               ; 6


(defmacro macroA (x)
  `(quote (+ 1 ,x 3))
)

(defmacro macroB (x)
  `(+ 1 ,x 3)
)

(println (macroA 2)) ; (+ 1 2 3)
(println (macroB 2)) ; 6


(defmacro triple (x)
  `(list ,x ,x ,x)
)

(println (triple 5)) ; (5 5 5)

(println (cons 3 nil)) ; (3)
