; Filter
(= (filter $f ()) ())
(= (filter $f (| $x $xs))
    (if ($f $x)
        (| $x (filter $f $xs))
        (filter $f $xs)))

(= (is-even $x) (== (% $x 2) 0))

; Test Cases
; !(filter is-even (| 1 (| 2 (| 3 (| 4 (| 5 (| 6 ())))))))  ; => (| 2 (| 4 (| 6 ())))
; !(filter is-even (| 1 (| 3 (| 5 ()))))  ; => ()
