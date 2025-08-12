(Sylvia 21 female)
(Sylvia 25 female)
(Tom 16 male)
(Tatiana 21 female)
(Catherine 46 female)

(Catherine isParentOf Sylvia)
(Kate isParentOf Sylvia)

(Catherine isParentOf Tom)
(Kate isParentOf Tom)
;;To avoid redundancy e.g by Calling Sylvia and Tom siblings we can use the following:
;;$x is $y's siblling if $c isParentOf $x and $c isParentOf $y
(= (isParent $x $y)
      (match &self ($x isParentOf $y) True))
(= (isParentOf $x $y) 
      (match &self ($c isParentOf $x) (match &self ($c isParentOf $y) True)))

(= (isSiblling $x $y) 
      (match &self ($c isParentOf $x) (match &self ($c isParentOf $y) True)))

;; When calling a function, we put the function name first, followed by the arguments.
!(isSiblling Sylvia Tom) ; yields True   
!(isSiblling Sylvia Tatiana) ; yields False
!(isParentOf Sylvia Tom) ; yields True
!(isParentOf Tom Sylvia) ; yields False
!(isParent Kate Tom) ; yields False

;; isSiblling is a function that checks if two individuals are siblings based on their parentage.
;; match &self is used to find a common parent ($c) of both individuals ($x and $y).

; !(match &self (Sylvia $x $y)(Sylvia is $x years old and is a $y))
; !(match &self (Catherine isParentOf $x) (match &self  ($x  $y $g)($x $y $g)))
; !(match &self ($x isParentOf Tom) $x)
; !(match &self (Kate isParentOf $x) $x)
; !($y)