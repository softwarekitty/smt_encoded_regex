(smt.random_seed = 20)
(assert (forall ((i Int))
  (=>
    (or
      (< i 0)
      (> i 1000)
    )
    false
  )
))
(declare-const x Int)
(assert (= x 3))
(assert (< x 4))
(check-sat)