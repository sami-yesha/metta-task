; Remove-Element
(= (remove-element $val ()) ())
(= (remove-element $val (| $x $xs))
    (if (== $val $x)
        (remove-element $val $xs)
        (| $x (remove-element $val $xs))))

; Test Cases
; !(remove-element 2 (| 1 (| 2 (| 3 (| 2 (| 4 ()))))))  ; => (| 1 (| 3 (| 4 ())))
; !(remove-element 1 (| 1 (| 1 (| 1 ()))))  ; => ()
