; (Owner Alice Cat)
; (Owner Bob Dog)
; (Owner Carol Fish)
; (Hobby Frank Reading)
; (Hobby Grace Running)
; (Hobby Liam Writing)
; (Hobby Mike Traveling)
; (Hobby Noah Painting)
; (Hobby Olivia Cooking)

; !(match &self (Owner Bob $x)$x)
; !(match &self (Owner $x $y) ($x owns a $y))
; !(match &self (Hobby $x $y) ($x enjoys $y))

; (= (has-pet $x $y)
;     (Owner $x $y))

; (= (is-cat-owner $person)
;     (owner $person Cat)
; )

; !(has-pet Alice Cat) ; yields True
; !(has-pet Bob Dog) ; yields True
; !(has-pet Carol Fish) ; yields True
; !(is-cat-owner Alice) ; yields True


