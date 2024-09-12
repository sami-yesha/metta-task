; Foldl
(= (foldl $f $acc ()) $acc)
(= (foldl $f $acc (| $x $xs))
    (foldl $f ($f $acc $x) $xs))

; Test Cases
; (= (sum $a $b) (+ $a $b))
; !(foldl sum 0 (| 1 (| 2 (| 3 ()))))  ; => 6
; !(foldl sum 10 (| 1 (| 2 (| 3 ()))))  ; => 16
