!(println! "Hello World")
!(map-atom (1 2 3) $x (+ $x 1)) ; yields (2 3 4)
;; unification example
!(let $x 3 (+ $x 4))
; yields 7, $x is unified with 3 in the body
!(let $x 3 (* $x 4)) ; yields 12
!(let ($x $y) (1 2) (+ $x $y))
; yields 3, $x is unified with 1, $y with 2
;; let* example
!(let* (($x 2)
  ($y (* $x 3)))
  (+ $x $y))
; yields 8, $x is unified with 2, $y is unified with (* $x 3) = 6
!(let* ((($a $b) (1 2))
  ($sum (+ $a $b)))
  $sum)
; yields 3, $a is 1, $b is 2, $sum is 3
(= (pick-one) (superpose (1 2 3)))
 !(pick-one)
 !(collapse (superpose (1 2 3))) ; yields one of the values 1, 2, or 3
 
;; non-deterministic in MeTTa 
 (= (bin) 0)
(= (bin) 1)
!(collapse-bind (bin))  ; yields two branches: (0 {}) and (1 {})
!(123)
!(- 123 456) ; yields -333

;; py integration tutorial
; !(py (import math))
!((py-atom math.sqrt )16) ; yields 4.0
!((py-atom math.floor) 3.54)
!((py-atom math.ceil) 3.54) ; yields 4
!(py-atom math.pi) ; yields 3.141592653589793
!((py-atom math.sin) 0) ; yields 0.0
!((py-atom math.cos) 0) ; yields 1.0
!((py-atom math.tan) 0) ; yields 0.0
!((py-atom math.log) 10) ; yields 2.302585092994046
!((py-atom math.exp) 2) ; yields 7.3890560989306495
!((py-atom math.pow) 2 3) ;