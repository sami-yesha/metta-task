; Push
(= (push $ele $list) (| $ele $list)) ; pushing associated with adding an element to the beginning (front) of a list or to the top of a stack.

; Test Cases
; !(push 0 (| 1 (| 2 (| 3 ()))))  ; => (| 0 (| 1 (| 2 (| 3 ()))))
; !(push 1 ())  ; => (| 1 ())
