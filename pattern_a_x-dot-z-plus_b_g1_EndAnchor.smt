;a(x.z)+b\1$
(set-logic UFNIA)

;/////////////////////////Define String theory/////////////////
(declare-sort Char 0)
(declare-sort String 0)

(declare-fun _a_ () Char)
(declare-fun _b_ () Char)
(declare-fun _c_ () Char)
(declare-fun _d_ () Char)
(declare-fun _e_ () Char)
(declare-fun _f_ () Char)
(declare-fun _g_ () Char)
(declare-fun _h_ () Char)
(declare-fun _i_ () Char)
(declare-fun _j_ () Char)
(declare-fun _k_ () Char)
(declare-fun _l_ () Char)
(declare-fun _m_ () Char)
(declare-fun _n_ () Char)
(declare-fun _o_ () Char)
(declare-fun _p_ () Char)
(declare-fun _q_ () Char)
(declare-fun _r_ () Char)
(declare-fun _s_ () Char)
(declare-fun _t_ () Char)
(declare-fun _u_ () Char)
(declare-fun _v_ () Char)
(declare-fun _w_ () Char)
(declare-fun _x_ () Char)
(declare-fun _y_ () Char)
(declare-fun _z_ () Char)
(declare-fun _A_ () Char)
(declare-fun _B_ () Char)
(declare-fun _C_ () Char)
(declare-fun _D_ () Char)
(declare-fun _E_ () Char)
(declare-fun _F_ () Char)
(declare-fun _G_ () Char)
(declare-fun _H_ () Char)
(declare-fun _I_ () Char)
(declare-fun _J_ () Char)
(declare-fun _K_ () Char)
(declare-fun _L_ () Char)
(declare-fun _M_ () Char)
(declare-fun _N_ () Char)
(declare-fun _O_ () Char)
(declare-fun _P_ () Char)
(declare-fun _Q_ () Char)
(declare-fun _R_ () Char)
(declare-fun _S_ () Char)
(declare-fun _T_ () Char)
(declare-fun _U_ () Char)
(declare-fun _V_ () Char)
(declare-fun _W_ () Char)
(declare-fun _X_ () Char)
(declare-fun _Y_ () Char)
(declare-fun _Z_ () Char)
(declare-fun _0_ () Char)
(declare-fun _1_ () Char)
(declare-fun _2_ () Char)
(declare-fun _3_ () Char)
(declare-fun _4_ () Char)
(declare-fun _5_ () Char)
(declare-fun _6_ () Char)
(declare-fun _7_ () Char)
(declare-fun _8_ () Char)
(declare-fun _9_ () Char)
(declare-fun _period_ () Char)
(declare-fun _comma_ () Char)
(declare-fun _colon_ () Char)
(declare-fun _fwdslash_ () Char)
(declare-fun _underscore_ () Char)
(declare-fun _dblquote_ () Char)
(declare-fun _siglequote_ () Char)
(declare-fun _backslash_ () Char)
(declare-fun _dash_ () Char)
(declare-fun _question_ () Char)
(declare-fun _openparen_ () Char)
(declare-fun _closeparen_ () Char)
(declare-fun _semicolon_ () Char)
(declare-fun _lcurly_ () Char)
(declare-fun _rcurly_ () Char)
(declare-fun _equals_ () Char)
(declare-fun _at_ () Char)
(declare-fun _lbracket_ () Char)
(declare-fun _rbracket_ () Char)
(declare-fun _amp_ () Char)
(declare-fun _excl_ () Char)
(declare-fun _pound_ () Char)
(declare-fun _percent_ () Char)
(declare-fun _plus_ () Char)
(declare-fun _star_ () Char)
(declare-fun _carrot_ () Char)
(declare-fun _tilde_ () Char)
(declare-fun _backtick_ () Char)
(declare-fun _langle_ () Char)
(declare-fun _rangle_ () Char)
(declare-fun _mid_ () Char)
(declare-fun _dollar_ () Char)
(declare-fun _newline_ () Char)
(declare-fun _tab_ () Char)
(declare-fun _return_ () Char)
(declare-fun _OUTOFBOUNDS_ () Char)

(assert (distinct _a_ _b_ _c_ _d_ _e_ _f_ _g_ _h_ _i_ _j_ _k_ _l_ _m_ _n_ _o_ _p_ _q_ _r_ _s_ _t_ _u_ _v_ _w_ _x_ _y_ _z_
	 _A_ _B_ _C_ _D_ _E_ _F_ _G_ _H_ _I_ _J_ _K_ _L_ _M_ _N_ _O_ _P_ _Q_ _R_ _S_ _T_ _U_ _V_ _W_ _X_ _Y_ _Z_ 
	 _0_ _1_ _2_ _3_ _4_ _5_ _6_ _7_ _8_ _9_ 
	 _period_ _comma_ _colon_ _fwdslash_ _underscore_ _dblquote_ _siglequote_ _backslash_ _dash_ _question_ _openparen_ _closeparen_ _semicolon_ _lcurly_ _rcurly_ _equals_ _at_ _lbracket_ _rbracket_ _amp_ _excl_ _pound_ _percent_ _plus_ _star_ _carrot_ _tilde_ _backtick_ _langle_ _rangle_ _mid_ _dollar_ _newline_ _tab_ _return_ _OUTOFBOUNDS_))

;getter functions for the string
(declare-fun length ( String ) Int )
(declare-fun charOf (String Int) Char)

;force all unmapped indices to _OUTOFBOUNDS_ to
;avoid false positive models
(assert 
	(forall ((goodString String))
		(forall ((badIndex Int))
			(=>
				(or 
					(< badIndex 0) 
					(>= badIndex (length goodString))
				)
				(= (charOf goodString badIndex) _OUTOFBOUNDS_) 
			)
		)	
	)
)

;substring helper function
(define-fun substringEqualAt ((dom String)(sub String)(begin Int)) Bool
	(and
		;the overlap is within bounds.
		(<= (+ begin (length sub)) (length dom))
		(>= begin 0)
		
		(forall ((subIndex Int))
			;the chars in that range are the same
			(=>
				(and
					(>= subIndex 0)
					(< subIndex (length sub))
				)
				(= (charOf sub subIndex) (charOf dom (+ subIndex begin)))
			)
		)
	)
)

;///////////////////Define Branch and Leaf relationships//////////////////

;declare the input string variable
;the index mapping for inputString goes at the end so that many strings can be pushed and popped
(declare-fun inputString () String)

;declare the variable where the pattern begins, solver should choose this
(declare-const patternBegin Int)

;declare organizational functions
(declare-sort Branch 0)
(declare-sort Leaf 0)
(declare-fun leafLength (Leaf) Int)
(declare-fun leafSat (Leaf) Bool)
(declare-fun branchLength (Branch) Int)
(declare-fun branchSat (Branch) Bool)

;instantiate variables
(declare-fun branch_A () Branch)
(declare-fun leaf_A0 () Leaf)
(declare-fun leaf_A1 () Leaf)
(declare-fun leaf_A2 () Leaf)
(declare-fun leaf_A3 () Leaf)

(assert 
	(= 
		(branchLength branch_A) 
		(+
			(leafLength leaf_A0)
			(leafLength leaf_A1)
			(leafLength leaf_A2)
			(leafLength leaf_A3)
		)
	)
)


;how the branches relate to leaves.  End anchors go here.
(assert 
	(= 
		(branchSat branch_A) 
		(and
			(leafSat leaf_A0)
			(leafSat leaf_A1)
			(leafSat leaf_A2)
			(leafSat leaf_A3)
			(= 
				(+ patternBegin (branchLength branch_A)) 
				(length inputString)
			)
		)
	)
)

;/////////////////////////////Define regex macros used in this encoding////////////////
(define-fun backMatches((s String)(earlierIndex Int)(laterIndex Int)(backMatchLength Int)) Bool 
	(and
		;the laterMatch is within bounds.
		(<= (+ laterIndex backMatchLength) (length s))
		(>= laterIndex 0)
		
		(forall ((subIndex Int))
			;the chars in that range are the same
			(=>
				(and
					(>= subIndex 0)
					(< subIndex backMatchLength)
				)
				(= (charOf s (+ subIndex earlierIndex))(charOf s (+ subIndex laterIndex)))
			)
		)
	)
)


(define-fun satisfiesDotCharClass((c Char)) Bool
	(not
		(or
			(= c _OUTOFBOUNDS_)
			(= c _newline_)
		)
	)
)

(declare-sort CharClassSequence 0)
(declare-fun sequenceLength (CharClassSequence) Int)
(declare-fun sequenceAcceptAt (CharClassSequence Int Char) Bool)

(define-fun repetitionsAt ((userInput String) (startIndex Int) (nRepetitions Int) (sequence CharClassSequence)) Bool
	(=> 
		;if there are repetitions
		(> nRepetitions 0) 
		
		;then for all repetition indices, we see a match along the CharClassSequence
		(forall ((repetitionIndex Int)(sequenceIndex Int))
			(=>
				(and 
					(>= repetitionIndex 0)
					(< repetitionIndex nRepetitions) 
					(>= sequenceIndex 0)
					(< sequenceIndex (sequenceLength sequence)) 
				)
				(sequenceAcceptAt sequence sequenceIndex 
					(charOf userInput
						(+ 
							startIndex
							(* (sequenceLength sequence) repetitionIndex)
							sequenceIndex
						)
					)
				)
			)
		)
	)
)

;////////////////////////Specify satisfaction at the leaf level//////////////////


;/////Leaf0////
(declare-const leaf_A0_sub String)
(assert (= (charOf leaf_A0_sub 0) _a_))
(assert (= (length leaf_A0_sub) 1))
(assert (= (leafLength leaf_A0) 1))
(assert (= (leafSat leaf_A0) (substringEqualAt inputString leaf_A0_sub patternBegin)))

;/////Leaf1////
(declare-fun leaf_A1_seq () CharClassSequence)
(declare-const leaf_A1_reps Int)
(assert (>= leaf_A1_reps 1))
(assert 
	(<= 
		leaf_A1_reps 
		(div 
			(- (length inputString) (+ (leafLength leaf_A0) patternBegin)) 
			(sequenceLength leaf_A1_seq)
		)
	)
)


(assert (= (sequenceLength leaf_A1_seq) 3))


;define a function for the accepting characters with a sequence
(define-fun leaf_A1_acceptAt ((index Int)(c Char)) Bool
	(ite (= index 0) 
		(= c _x_)
		(ite (= index 1)
			(satisfiesDotCharClass c)
			(ite (= index 2)
				(= c _z_)
				false
			)
		)
	)
)

;mapping the CharClassSequence's sequenceAcceptAt function to leaf_A1_acceptAt
;for indices we will be using.
(assert
	(forall ((c Char)(i Int))
		(=>
			(and
				(< i (sequenceLength leaf_A1_seq))
				(>= i 0)
			)
			(=
				(sequenceAcceptAt leaf_A1_seq i c)
				(leaf_A1_acceptAt i c)
			)
		)
	)
)

(assert (= (leafLength leaf_A1) (* (sequenceLength leaf_A1_seq) leaf_A1_reps)))

(assert 
	(= 
		(leafSat leaf_A1)
		(repetitionsAt 
			inputString 
			(+ patternBegin (leafLength leaf_A0)) 
			leaf_A1_reps 
			leaf_A1_seq
		)
	)
)


;/////Leaf2////
(declare-const leaf_A2_sub String)
(assert (= (charOf leaf_A2_sub 0) _b_))
(assert (= (length leaf_A2_sub) 1 (leafLength leaf_A2)))
(assert (= (leafSat leaf_A2) (substringEqualAt inputString leaf_A2_sub (+ patternBegin (leafLength leaf_A0) (leafLength leaf_A1)))))

;/////Leaf3////
;we want the last capture group in the repetition, if anything
(assert (= (leafLength leaf_A3) (sequenceLength leaf_A1_seq)))
(assert 
	(= 
		(leafSat leaf_A3) 
		(backMatches 
			inputString 
			(- 
				(+ patternBegin (leafLength leaf_A0) (leafLength leaf_A1)) 
				(leafLength leaf_A3)
			) 
			(+ patternBegin (leafLength leaf_A0) (leafLength leaf_A1) (leafLength leaf_A2)) 
			(leafLength leaf_A3)
		)
	)
)
(assert (= (leafSat leaf_A3) true))

;//////////////////////////Solve///////////////////////////////


;the is the top-level assertion: at least one branch of the expression will satisfy
(assert 
	(or
		(branchSat branch_A)
		false
	)
)
(push)

;this inputString should satisfy
(assert (= (charOf inputString 0) _m_ ))
(assert (= (charOf inputString 1) _n_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _x_ ))
(assert (= (charOf inputString 4) _w_ ))
(assert (= (charOf inputString 5) _z_ ))
(assert (= (charOf inputString 6) _x_ ))
(assert (= (charOf inputString 7) _r_ ))
(assert (= (charOf inputString 8) _z_ ))
(assert (= (charOf inputString 9) _b_ ))
(assert (= (charOf inputString 10) _x_ ))
(assert (= (charOf inputString 11) _r_ ))
(assert (= (charOf inputString 12) _z_ ))
(assert (= (length inputString) 13))
(check-sat)
(get-value (patternBegin)) ;2
(get-value (leaf_A1_reps)) ;2
(pop)
(push)

;this inputString should satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _x_ ))
(assert (= (charOf inputString 2) _c_ ))
(assert (= (charOf inputString 3) _z_ ))
(assert (= (charOf inputString 4) _x_ ))
(assert (= (charOf inputString 5) _r_ ))
(assert (= (charOf inputString 6) _z_ ))
(assert (= (charOf inputString 7) _b_ ))
(assert (= (charOf inputString 8) _x_ ))
(assert (= (charOf inputString 9) _r_ ))
(assert (= (charOf inputString 10) _z_ ))
(assert (= (length inputString) 11))
(check-sat)
(get-value (patternBegin)) ;0
(get-value (leaf_A1_reps)) ;2
(pop)
(push)

;this inputString should satisfy
(assert (= (charOf inputString 0) _m_ ))
(assert (= (charOf inputString 1) _n_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _x_ ))
(assert (= (charOf inputString 4) _g_ ))
(assert (= (charOf inputString 5) _z_ ))
(assert (= (charOf inputString 6) _b_ ))
(assert (= (charOf inputString 7) _x_ ))
(assert (= (charOf inputString 8) _g_ ))
(assert (= (charOf inputString 9) _z_ ))
(assert (= (length inputString) 10))
(check-sat)
(get-value (patternBegin)) ;2
(get-value (leaf_A1_reps)) ;1
(pop)
(push)

;this inputString should not satisfy - ends before anchor
(assert (= (charOf inputString 0) _m_ ))
(assert (= (charOf inputString 1) _n_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _x_ ))
(assert (= (charOf inputString 4) _c_ ))
(assert (= (charOf inputString 5) _z_ ))
(assert (= (charOf inputString 6) _x_ ))
(assert (= (charOf inputString 7) _r_ ))
(assert (= (charOf inputString 8) _z_ ))
(assert (= (charOf inputString 9) _b_ ))
(assert (= (charOf inputString 10) _x_ ))
(assert (= (charOf inputString 11) _r_ ))
(assert (= (charOf inputString 12) _z_ ))
(assert (= (charOf inputString 13) _q_ ))
(assert (= (length inputString) 14))
(check-sat)
(pop)
(push)

;this inputString should not satisfy - wrong group backmatched
(assert (= (charOf inputString 0) _m_ ))
(assert (= (charOf inputString 1) _n_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _x_ ))
(assert (= (charOf inputString 4) _c_ ))
(assert (= (charOf inputString 5) _z_ ))
(assert (= (charOf inputString 6) _x_ ))
(assert (= (charOf inputString 7) _r_ ))
(assert (= (charOf inputString 8) _z_ ))
(assert (= (charOf inputString 9) _b_ ))
(assert (= (charOf inputString 10) _x_ ))
(assert (= (charOf inputString 11) _c_ ))
(assert (= (charOf inputString 12) _z_ ))
(assert (= (length inputString) 13))
(check-sat)
(pop)
(push)

;this inputString should not satisfy - char r is not z
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _x_ ))
(assert (= (charOf inputString 2) _r_ ))
(assert (= (charOf inputString 3) _r_ ))
(assert (= (charOf inputString 4) _b_ ))
(assert (= (charOf inputString 5) _x_ ))
(assert (= (charOf inputString 6) _r_ ))
(assert (= (charOf inputString 7) _r_ ))
(assert (= (length inputString) 8))
(check-sat)
(pop)
(push)

;this inputString should not satisfy - char newline is not in dot
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _x_ ))
(assert (= (charOf inputString 2) _newline_ ))
(assert (= (charOf inputString 3) _z_ ))
(assert (= (charOf inputString 4) _b_ ))
(assert (= (charOf inputString 5) _x_ ))
(assert (= (charOf inputString 6) _newline_ ))
(assert (= (charOf inputString 7) _z_ ))
(assert (= (length inputString) 8))
(check-sat)
(pop)
(push)

;this inputString should not satisfy - missing a leaf
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _x_ ))
(assert (= (charOf inputString 2) _t_ ))
(assert (= (charOf inputString 3) _z_ ))
(assert (= (charOf inputString 4) _x_ ))
(assert (= (charOf inputString 5) _t_ ))
(assert (= (charOf inputString 6) _z_ ))
(assert (= (length inputString) 7))
(check-sat)
(pop)
(push)


(exit)
