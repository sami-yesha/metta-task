; Foldr
(= (foldr $f $acc ()) $acc)
(= (foldr $f $acc (| $x $xs))
    ($f $x (foldr $f $acc $xs)))

; Test Cases
; !(foldr sum 0 (| 1 (| 2 (| 3 ()))))  ; => 6
; !(foldr sum 10 (| 1 (| 2 (| 3 ()))))  ; => 16
