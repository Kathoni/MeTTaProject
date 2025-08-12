!(println! "Hello World")
!(map-atom (1 2 3) $x (+ $x 1)) ; yields (2 3 4)