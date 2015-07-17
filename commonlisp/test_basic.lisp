;

(defun println (s)
  (format t "~S~$" s #\linefeed)
)


(println (+ 1 2)) ; 3

(defvar x 1)
(println (+ x 2)) ; 3
