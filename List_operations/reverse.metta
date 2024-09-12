(= (reverse ()) ())
(= (reverse (| $x $xs))
    (append (reverse $xs) $x))

(= (append () $ele) (| $ele ()))
(= (append (| $x $xs) $ele)
    (| $x (append $xs $ele)))

; Test case
; !(reverse (| 1 (| 2 (| 3 ()))))
