; 
(= (is-member $a ()) False)
(= (is-member $a (| $x $xs))
    (or (== $a $x)
        (is-member $a $xs)))

(= (remove-duplicate () $seen) ())
(= (remove-duplicate (| $x $xs) $seen)
    (if (is-member $x $seen)
        (remove-duplicate $xs $seen)
        (| $x (remove-duplicate $xs (| $x $seen)))))


; Test Cases
; !(remove-duplicate (| 1 (| 2 (| 3 (| 2 (| 4 ()))))) ())  ; => (| 1 (| 2 (| 3 (| 4 ()))))
; !(remove-duplicate (| 1 (| 1 (| 1 (| 1 (| 1 ()))))) ())  ; => (| 1 ()))

