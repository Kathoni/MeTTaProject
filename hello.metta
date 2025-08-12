!(println! "Hello World")
!(map-atom (1 2 3) $x (+ $x 1)) ; yields (2 3 4)
;; unification example
!(let $x 3 (+ $x 4))
; yields 7, $x is unified with 3 in the body
!(let $x 3 (* $x 4)) ; yields 12
!(let ($x $y) (1 2) (+ $x $y))
; yields 3, $x is unified with 1, $y with 2
