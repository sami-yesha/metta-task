
 ;Min-Value
(= (min-value $min ()) $min)
(= (min-value $min (| $x $xs))
    (if (> $min $x)
        (min-value $x $xs)
        (min-value $min $xs)
    )
)
(= (first-element ()) ()) ; to find the first element
(= (first-element (| $x $xs)) $x)

! (min-value (first-element (| 1 (| 2 (| 5 (| -3 ()))))) (| 1 (| 2 (| 5 (| -3 ()))))) ; => -3
