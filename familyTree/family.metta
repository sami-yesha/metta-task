 ; Family Tree
(Male Chandler)
(Female Monica)
(Male Jhon)
(Female Pam)
(Male Adam)
(Female Jane)
(Male Bob)
(Male Tim)
(Female Kim)
(Female Eve)
(Male Joey)

(Parent Chandler Jhon)
(Parent Monica Jhon)
(Parent Chandler Pam)
(Parent Monica Pam)
(Parent Chandler Adam)
(Parent Monica Adam)
(Parent Chandler Jane)
(Parent Monica Jane)
(Parent Jhon Bob)
(Parent Pam Tim)
(Parent Pam Kim)
(Parent Adam Eve)
(Parent Jane Joey)

(= (get-parents $x ) (
        (match &self (Parent $y $x) $y)
    ))
(= (get-father $x)
    (match &self (,
            (Parent $y $x) (Male $y)
        ) $y)
)
(= (get-mother $x)
    (match &self (,
            (Parent $y $x) (Female $y)
        ) $y)
)

(= (get-grand-parents $x)
    (match &self (Parent $y $x) (get-parents $y)
    ))

(= (get-grand-fathers $x)
    (match &self (Parent $y $x) (get-father $y)
    ))

(= (get-grand-mothers $x)
    (match &self (Parent $y $x) (get-mother $y)
    ))

(= (get-children $x)
    (match &self (Parent $x $y) $y)
)

(= (get-siblings $x)
    (
        case ($x (get-children (get-father $x))) (
            ( ($x $x) (empty) )
            ( ($x $y) $y)
        )
)
)

(= (get-sisters $x)
    (
        case ($x (get-children (get-father $x))) (
            ( ($x $x) (empty) )
            ( ($x $y) (match &self (Female $y) $y))
        )
)
)

(= (get-brothers $x)
    (
        case ($x (get-children (get-father $x))) (
            ( ($x $x) (empty) )
            ( ($x $y) (match &self (Male $y) $y))
        )
)
)
 ;when unify is used, we can set  (Male Eyob)a fallback .
(= (get-children1 $x) (
        (unify &self (Parent $x $y) $y (not-found))
    ))

(= (get-uncles $x) (

        (match &self (Parent $y $x) (get-brothers $y))

    ))
(= (get-aunts $x) (

        (match &self (Parent $y $x) (get-sisters $y))

    ))

(= (get-niblings $x)
    (
        case ($x  (get-children (get-father $x))) (
            ( ($x $x) (empty) )
            ( ($x $y) (get-children $y))
        )
)
)

(= (get-nieces $x)
    (
        case ($x  (get-niblings $x)) (
            ( ($x $x) (empty) )
            ( ($x $y) (match &self (Female $y) $y))
        )
)
)

(= (get-nephew $x)
    (
        case ($x  (get-niblings $x)) (
            ( ($x $x) (empty) )
            ( ($x $y) (match &self (Female $y) $y))
        )
)
)

 ;if there are on children, then output 'not-found'
 ;!(get-parents Jhon)
 ;!(get-mother Pam)
 ;!(get-siblings Pam)
 ;! (get-uncles Betty)
 ;!(get-nephew John)
 ;!(get-brothers Betty)
 ;!(get-sisters  Luke)
 ;!(get-grand-mothers Ruth)

 ;!(get-aunts Luke)
! (get-nieces Abebech)
(Male Eyob)
