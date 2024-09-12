; sort
(= (sort ()) ())
(= (sort (| $x $xs))
    (place $x (sort $xs)))

(= (place $val ()) (| $val ()))  ; placing the value in the right place[index]
(= (place $val (| $x $xs))
    (if (> $val $x)
    (| $x (place $val $xs))
    (| $val (| $x $xs))))

; Test Cases
; !(sort (| 4 (| 2 (| 1 (| 5 (| 3 (| 6 (| 7 (| 8 (| 9 ()))))))))))  ; => (| 1 (| 2 (| 3 (| 4 (| 5 (| 6 (| 7 (| 8 (| 9 ())))))))))
; !(sort (| 9 (| 8 (| 7 (| 6 (| 5 (| 4 (| 3 (| 2 (| 1 ()))))))))))  ; => (| 1 (| 2 (| 3 (| 4 (| 5 (| 6 (| 7 (| 8 (| 9 ()))))))))))
