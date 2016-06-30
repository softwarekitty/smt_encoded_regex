(declare-const a1_1 (Array Int Int))
(assert (= (select a1_1 0) 10))
(assert (= (select a1_1 1) 20))
(assert (= (select a1_1 2) 30))
(assert (= (select a1_1 3) 40))
(assert (= (select a1_1 4) 50))

(declare-const a1_2 (Array Int Int))
(assert (= (select a1_2 0) 10))
(assert (= (select a1_2 1) 20))
(assert (= (select a1_2 2) 30))
(assert (= (select a1_2 3) 40))
(assert (= (select a1_2 4) 50))
(assert (= (select a1_2 5) 60))



(declare-const a1 (Array Int (Array Int Int)))
(assert (= (select a1 0) a1_1))
(assert (= (select a1 1) a1_2))

(declare-const a1_lengths (Array Int Int))
(assert (= (select a1_lengths 0) 5))
(assert (= (select a1_lengths 1) 6))

(declare-const length_a1 Int)
(assert (= length_a1 2))

(define-fun arraySum ((inputArray (Array Int Int))(arrayLength Int)) Int
	(ite 
		(= arrayLength 1)
		(select inputArray 0)
		(ite 
			(= arrayLength 2)
			(+ (select inputArray 0)(select inputArray 1))
			(ite 
				(= arrayLength 3)
				(+ (select inputArray 0)(select inputArray 1)(select inputArray 2))
				(ite 
					(= arrayLength 4)
						(+ (select inputArray 0)(select inputArray 1)(select inputArray 2)(select inputArray 3))
					(ite 
						(= arrayLength 5)
						(+ (select inputArray 0)(select inputArray 1)(select inputArray 2)(select inputArray 3)(select inputArray 4))
						(ite 
							(= arrayLength 6)
							(+ (select inputArray 0)(select inputArray 1)(select inputArray 2)(select inputArray 3)(select inputArray 4)(select inputArray 5))
							-2147483648
						)
					)
				)
			)
		)
	)
)
;prepare these, all between 2 and 100 in 2-increments (50), then up to 1000 in 20's (45), up to 2500 in 100's (15)
						;100*N + 20*({N*(N+1)}/2)  = 600,000 + 350,000,000 (350MB) for N=6000
						;= 100,000 + 10,000,000 (10MB) for N=1000
						;= 300,000 + 90,000,000 (90MB) for N=3000.  
						;= 10,000 + 100,000 
						;average 1-page document is about 2500 chars long
						;5MB,0.5GB,1.5GB; about 2GB of in-memory strings needed for live encoding of arrays up to 2500 units long.


(declare-const n Int)
(assert (= (+ (arraySum (select a1 0) (select a1_lengths 0))(arraySum (select a1 1) (select a1_lengths 1))) 360))
(check-sat)
