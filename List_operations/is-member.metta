(= (is-member $a ()) False)
(= (is-member $a (| $x $xs))
    (or (== $a $x)
        (is-member $a $xs)))

; Test Cases
; !(is-member 2 (| 1 (| 2 (| 3 ()))))  ; => True
; !(is-member 4 (| 1 (| 2 (| 3 ()))))  ; => False



