;

(define (println s)
  (display s) (newline)
)

(println (eq? #t (= 1 1))) ; #t
(println (eq? "A" "A"))    ; #t

; car : contents of address register
(println (car (cons 1 2))) ; 1

; cdr : contents of decrement register
(println (cdr (cons 1 2))) ; 2

; quote ` : a template of a data structure to be built
(println (eq? (quote a) `a)) ; #t

; apply
(println (apply + `(1 2 3)))     ; 6
(println (apply + '(1 2 3)))     ; 6
(println (apply + (list 1 2 3))) ; 6

(println (+ 1 2 3))              ; 6

(println (cons 3 ())) ; (3)
