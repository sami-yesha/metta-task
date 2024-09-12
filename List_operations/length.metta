; Length
(= (length ()) 0)
(= (length (| $x $xs))
    (+ 1 (length $xs)))

; Test Cases
; !(length (| 1 (| 2 (| 3 ()))))  ; => 3
; !(length ())  ; => 0
