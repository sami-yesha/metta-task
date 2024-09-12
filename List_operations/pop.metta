; Pop
(= (pop (| $x $xs)) $xs) 

; Test Cases
; !(pop (| 1 (| 2 (| 3 ()))))  ; => (| 2 (| 3 ()))
; !(pop (| 1 ()))  ; => ()
