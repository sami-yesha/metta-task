; Append
(= (append () $ele) (| $ele ()))
(= (append (| $x $xs) $ele)
    (| $x (append $xs $ele)))

; Test Cases
; !(append (| 1 (| 2 (| 3 ()))) 4)  ; => (| 1 (| 2 (| 3 (| 4 ()))))
; !(append () 1)  ; => (| 1 ())
