
; max- value
(= (max-value $max ()) $max)
(= (max-value $max (| $x $xs))
    (if (> $max $x)
        (max-value $max $xs)
        (max-value $x $xs)
    )
)
(= (first-element ()) ())  ; to find the first element of the list
(= (first-element (| $x $xs)) $x)

;Test case
; ! (max-value (first-element (| 1 (| 2 (| 5 (| 3 ()))))) (| 1 (| 2 (| 5 (| 3 ()))))) ; => 5

