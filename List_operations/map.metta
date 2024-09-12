; Map
(= (map $f ())())
(= (map $f (| $x $xs))
    (| ($f $x) (map $f $xs)))

; Test Cases
; (= (double $x) (* 2 $x))
; !(map double (| 1 (| 2 (| 3 ()))))  ; => (| 2 (| 4 (| 6 ())))
; !(map double ())  ; => ()
