;(((a+b)+c)+d)+e

;/////////////////////////Define String theory/////////////////
(declare-sort Char 0)
(declare-sort String 0)

(declare-fun _OUTOFBOUNDS_ () Char)(declare-fun _newline_ () Char)(declare-fun _tab_ () Char)(declare-fun _feed_ () Char)(declare-fun _return_ () Char)(declare-fun __ () Char)
(declare-fun _a_ () Char)(declare-fun _b_ () Char)(declare-fun _c_ () Char)(declare-fun _d_ () Char)(declare-fun _e_ () Char)(declare-fun _f_ () Char)(declare-fun _g_ () Char)(declare-fun _h_ () Char)(declare-fun _i_ () Char)(declare-fun _j_ () Char)(declare-fun _k_ () Char)(declare-fun _l_ () Char)(declare-fun _m_ () Char)(declare-fun _n_ () Char)(declare-fun _o_ () Char)(declare-fun _p_ () Char)(declare-fun _q_ () Char)(declare-fun _r_ () Char)(declare-fun _s_ () Char)(declare-fun _t_ () Char)(declare-fun _u_ () Char)(declare-fun _v_ () Char)(declare-fun _w_ () Char)(declare-fun _x_ () Char)(declare-fun _y_ () Char)(declare-fun _z_ () Char)
(declare-fun _A_ () Char)(declare-fun _B_ () Char)(declare-fun _C_ () Char)(declare-fun _D_ () Char)(declare-fun _E_ () Char)(declare-fun _F_ () Char)(declare-fun _G_ () Char)(declare-fun _H_ () Char)(declare-fun _I_ () Char)(declare-fun _J_ () Char)(declare-fun _K_ () Char)(declare-fun _L_ () Char)(declare-fun _M_ () Char)(declare-fun _N_ () Char)(declare-fun _O_ () Char)(declare-fun _P_ () Char)(declare-fun _Q_ () Char)(declare-fun _R_ () Char)(declare-fun _S_ () Char)(declare-fun _T_ () Char)(declare-fun _U_ () Char)(declare-fun _V_ () Char)(declare-fun _W_ () Char)(declare-fun _X_ () Char)(declare-fun _Y_ () Char)(declare-fun _Z_ () Char)
(declare-fun _0_ () Char)(declare-fun _1_ () Char)(declare-fun _2_ () Char)(declare-fun _3_ () Char)(declare-fun _4_ () Char)(declare-fun _5_ () Char)(declare-fun _6_ () Char)(declare-fun _7_ () Char)(declare-fun _8_ () Char)(declare-fun _9_ () Char)
(declare-fun _excl_ () Char)(declare-fun _at_ () Char)(declare-fun _pound_ () Char)(declare-fun _dollar_ () Char)(declare-fun _percent_ () Char)(declare-fun _carrot_ () Char)(declare-fun _amp_ () Char)(declare-fun _star_ () Char)(declare-fun _openparen_ () Char)(declare-fun _closeparen_ () Char)
(declare-fun _tilde_ () Char)(declare-fun _backtick_ () Char)
(declare-fun _dash_ () Char)(declare-fun _underscore_ () Char)
(declare-fun _plus_ () Char)(declare-fun _equals_ () Char)
(declare-fun _lcurly_ () Char)(declare-fun _lbracket_ () Char)
(declare-fun _rcurly_ () Char)(declare-fun _rbracket_ () Char)
(declare-fun _mid_ () Char)(declare-fun _fwdslash_ () Char)
(declare-fun _colon_ () Char)(declare-fun _semicolon_ () Char)
(declare-fun _dblquote_ () Char)(declare-fun _singlequote_ () Char)
(declare-fun _langle_ () Char)(declare-fun _comma_ () Char)
(declare-fun _rangle_ () Char)(declare-fun _period_ () Char)
(declare-fun _question_ () Char)(declare-fun _backslash_ () Char)

(assert 
	(distinct 
		_OUTOFBOUNDS_ _newline_ _tab_ _feed_ _return_ __
		_a_ _b_ _c_ _d_ _e_ _f_ _g_ _h_ _i_ _j_ _k_ _l_ _m_ _n_ _o_ _p_ _q_ _r_ _s_ _t_ _u_ _v_ _w_ _x_ _y_ _z_
		_A_ _B_ _C_ _D_ _E_ _F_ _G_ _H_ _I_ _J_ _K_ _L_ _M_ _N_ _O_ _P_ _Q_ _R_ _S_ _T_ _U_ _V_ _W_ _X_ _Y_ _Z_
		_0_ _1_ _2_ _3_ _4_ _5_ _6_ _7_ _8_ _9_
		_excl_ _at_ _pound_ _dollar_ _percent_ _carrot_ _amp_ _star_ _openparen_ _closeparen_
		_tilde_ _backtick_
		_dash_ _underscore_
		_plus_ _equals_
		_lcurly_ _lbracket_
		_rcurly_ _rbracket_
		_mid_ _fwdslash_
		_colon_ _semicolon_
		_dblquote_ _singlequote_
		_langle_ _comma_
		_rangle_ _period_
		_question_ _backslash_
	)
)

;eliminate imaginary characters	 
(assert 
	(forall ((c Char))
		(or
			(= c _OUTOFBOUNDS_)(= c _newline_)(= c _tab_)(= c _feed_)(= c _return_)(= c __)
			(= c _a_)(= c _b_)(= c _c_)(= c _d_)(= c _e_)(= c _f_)(= c _g_)(= c _h_)(= c _i_)(= c _j_)(= c _k_)(= c _l_)(= c _m_)(= c _n_)(= c _o_)(= c _p_)(= c _q_)(= c _r_)(= c _s_)(= c _t_)(= c _u_)(= c _v_)(= c _w_)(= c _x_)(= c _y_)(= c _z_)
			(= c _A_)(= c _B_)(= c _C_)(= c _D_)(= c _E_)(= c _F_)(= c _G_)(= c _H_)(= c _I_)(= c _J_)(= c _K_)(= c _L_)(= c _M_)(= c _N_)(= c _O_)(= c _P_)(= c _Q_)(= c _R_)(= c _S_)(= c _T_)(= c _U_)(= c _V_)(= c _W_)(= c _X_)(= c _Y_)(= c _Z_)
			(= c _0_)(= c _1_)(= c _2_)(= c _3_)(= c _4_)(= c _5_)(= c _6_)(= c _7_)(= c _8_)(= c _9_)
			(= c _excl_)(= c _at_)(= c _pound_)(= c _dollar_)(= c _percent_)(= c _carrot_)(= c _amp_)(= c _star_)(= c _openparen_)(= c _closeparen_)
			(= c _tilde_)(= c _backtick_)
			(= c _dash_)(= c _underscore_)
			(= c _plus_)(= c _equals_)
			(= c _lcurly_)(= c _lbracket_)
			(= c _rcurly_)(= c _rbracket_)
			(= c _mid_)(= c _fwdslash_)
			(= c _colon_)(= c _semicolon_)
			(= c _dblquote_)(= c _singlequote_)
			(= c _langle_)(= c _comma_)
			(= c _rangle_)(= c _period_)
			(= c _question_)(= c _backslash_)
		)
	)
)

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

;force 
(assert (forall ((s1 String) (s2 String))
                (=> (and 
                     (= (length s1) (length s2))
                     (forall ((i Int))
                             (=> (and (<= 0 i) (< i (length s1)))
                                 (= (char-of s1 i) (char-of s2 i)))))
                    (= s1 s2))))
;////////////////////Data Structure Utilities////////////////////


(define-fun arraySum ((inputArray (Array Int Int))(arrayLength Int)) Int
	(ite
		(= arrayLength 0)
		0
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
								(ite 
									(= arrayLength 7)
									(+ (select inputArray 0)(select inputArray 1)(select inputArray 2)(select inputArray 3)(select inputArray 4)(select inputArray 5)(select inputArray 6))
									(ite 
										(= arrayLength 8)
										(+ (select inputArray 0)(select inputArray 1)(select inputArray 2)(select inputArray 3)(select inputArray 4)(select inputArray 5)(select inputArray 6)(select inputArray 7))
										-2147483648
									)
								)
							)
						)
					)
				)
			)
		)
	)
)


;///////////////////Define Variables//////////////////

;declare the input string variable
;the index mapping for inputString goes at the end so that many strings can be pushed and popped
(declare-fun inputString () String)

;declare the variable where the pattern begins, solver should choose this
(declare-const patternBegin Int)
(assert 
	(and
		(>= patternBegin 0)
		(< patternBegin (length inputString))
	)
)

;declare organizational functions
;rules:	A vine can contain branches and leaves. There is always a root vine, or an OR of root vines.
;		Only these root vines can have endpoint anchors.
;
;		A branch contains exactly one vine, which the solver may choose to 
;		repeat the pattern of a specified range between min and max number of times.
;		So a very important set of values is the nRepetitions for a branch.  This branch has a 1-D array,
;		the values and size of which are chosen by the solver.  The number of items at one level
;		will be equal to the sum of the items at the previous level.  Each item is the number of 
;		repetitions chosen by the solver for a particular place in the tree, determined by the values below.
;		For example, the pattern (((a+b)*c)+d)+e matching
;		'aaaaaabcababababcdcdabaababcccde' will have one root vine with one branch and one leaf (e)
;		the branch will have one vine on it: '((a+b)*c)+d', which can be repeated one or more times.
;		The solver will need to choose the array {3} at this level, as there are 3 d's.
;		At the next level we have the vine '(a+b)*c'.  The solver must choose three independent values
;		for this branch, since it chose 3 for the previously considered branch.  It must choose {2,1,3},
;		because this is the pattern followed by the 6 c's.
;		Again the solver must choose the number of times we see 'a+b',  It must choose {1,4,0,3,0,0}
;		to match the string.  Look at the first 2 matching vines - one has 1 (a+b)* repetitions before the 'c',
;		the second has 4.  Then the one zero, this corresponds to the '1' in the second array.  Then there is 3,0,0, 
;		which corresponds to the 3 number of appearances of the (a+b)* vine (in this example: abaababccc) before the 'c'.
;		Now we have the leaf (a+), which has an array of 8 values.  The solver
;		must choose: {6,1,1,1,1,1,2,1} for this array, since these are the numbers of times that
;		'a' is repeated in its {1,4,0,3,0,0} (8 total) locations.

(declare-sort Leaf 0)

;instantiate the leaves for this pattern:

(declare-fun leaf_aPlus () Leaf)
(declare-fun leaf_b () Leaf)
(declare-fun leaf_c () Leaf)
(declare-fun leaf_d () Leaf)
(declare-fun leaf_e () Leaf)



(declare-const branch_V0_Ar (Array Int Int))
(declare-const branch_V1_Ar (Array Int Int))
(declare-const branch_V2_Ar (Array Int Int))

(declare-const branch_V0_L Int)
(declare-const branch_V1_L Int)
(declare-const branch_V2_L Int)

(assert (= branch_V0_L 1))
(assert (= branch_V1_L (arraySum branch_V0_Ar branch_V0_L)))
(assert (= branch_V2_L (arraySum branch_V1_Ar branch_V1_L)))

(declare-const leaf_aPlus_Ar (Array Int Int))


;leaf aPlus array contents need to be between 1 and MAX
(assert 
	(forall ((aPlus_index Int))
		(=>
			(and
				(>= aPlus_index 0)
				(< aPlus_index (arraySum branch_V2_Ar (arraySum branch_V1_Ar (select branch_V0_Ar 0))))
			)
			(and
				(>= (select leaf_aPlus_Ar aPlus_index) 1)
				(<= (select leaf_aPlus_Ar aPlus_index) (length inputString))
			)	
		)
	)
)

;branch V0 is a '+' style repetition, so it must repeat between 1 and MAX times
(assert 
	(and
		(>= (select branch_V0_Ar 0) 1)
		(<= (select branch_V0_Ar 0) (length inputString))
	)	
)


;branch V1 is a '+' style repetition, so all of its vines must repeat between 1 and MAX times
(assert 
	(forall ((V0_index Int))
		(=>
			(and
				(>= V0_index 0)
				(< V0_index (select branch_V0_Ar 0))
			)
			(and
				(>= (select branch_V1_Ar V0_index) 1)
				(<= (select branch_V1_Ar V0_index) (length inputString))
			)
		)	
	)
)

;branch V2 is a '*' style repetition, so all of its vines must repeat between 0 and MAX times
(assert 
	(forall ((V2_index Int))
		(=>
			(and
				(>= V2_index 0)
				(< V2_index (arraySum branch_V1_Ar (select branch_V0_Ar 0)))
			)
			(and
				(>= (select branch_V2_Ar V2_index) 0)
				(<= (select branch_V2_Ar V2_index) (length inputString))
			)
		)	
	)
)




;////////////////////////Specify satisfaction at the leaf level//////////////////

(declare-fun leafLength (Leaf) Int)
(declare-fun leafSat (Leaf) Bool); this is true iff the leaf is sat for all indices it should be sat at

;/////leaf_aPlus////
(declare-const leaf_aPlus_Char Char)
(assert (= leaf_aPlus_Char _a_))
(assert (= (leafLength leaf_aPlus) 1))
(define-fun leaf_aPlus_Sat () Bool
	(forall ((V0_index Int))
		(=>
			(and
				(>= V0_index 0)
				(< V0_index (select branch_V0_Ar 0))
			)
			(forall ((V1_index Int))
				(=>
					(and
						(>= V1_index 0)
						(< V1_index (select branch_V1_Ar V0_index))
					)
					(forall ((V2_index Int))
						(=>
							(and
								(>= V2_index 0)
								(< V2_index (select branch_V2_Ar V1_index))
							)
							(forall ((R_index Int))
								(=>
									(and
										(>= R_index 0)
										(< R_index (select leaf_aPlus_Ar (+ V2_index (arraySum branch_V2_Ar (+ V1_index (arraySum branch_V1_Ar V0_index)))))) 
									)
									(= leaf_aPlus_Char 
										(charOf 
											inputString
											(+
												patternBegin
												(* (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (+ V2_index (arraySum branch_V2_Ar (+ V1_index (arraySum branch_V1_Ar V0_index))))));
												(* (leafLength leaf_b) (+ V2_index (arraySum branch_V2_Ar (+ V1_index (arraySum branch_V1_Ar V0_index)))))
												(* (leafLength leaf_c) (+ V1_index (arraySum branch_V1_Ar V0_index)))
												(* (leafLength leaf_d) V0_index)
												R_index
											)
										)
									)
								)
							)
						)
					)
				)
			)
		)
	)
)
(assert (= (leafSat leaf_aPlus) leaf_aPlus_Sat))

;/////leaf_b////
(declare-const leaf_b_Char Char)
(assert (= leaf_b_Char _b_))
(assert (= (leafLength leaf_b) 1))
(define-fun leaf_b_Sat () Bool
	(forall ((V0_index Int))
		(=>
			(and
				(>= V0_index 0)
				(< V0_index (select branch_V0_Ar 0))
			)
			(forall ((V1_index Int))
				(=>
					(and
						(>= V1_index 0)
						(< V1_index (select branch_V1_Ar V0_index))
					)
					(forall ((V2_index Int))
						(=>
							(and
								(>= V2_index 0)
								(< V2_index (select branch_V2_Ar V1_index))
							)
							;now we have all the combinations of valid indices in our hand
							(= leaf_b_Char 
								(charOf 
									inputString
									(+
										patternBegin			;NOTICE: because 'a' happens before 'b' on the same level as 'b', we add 1 to the V2_index (that level), 
																;when considering how many 'a's to count.  This pattern applies at all levels, for branches as well
																;that are on the same level as a leaf, see notice in leaf_c below
										(* (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (+ 1 V2_index (arraySum branch_V2_Ar (+ V1_index (arraySum branch_V1_Ar V0_index))))))
										(* (leafLength leaf_b) (+  V2_index (arraySum branch_V2_Ar (+ V1_index (arraySum branch_V1_Ar V0_index)))))
										(* (leafLength leaf_c) (+ V1_index (arraySum branch_V1_Ar V0_index)))
										(* (leafLength leaf_d) V0_index)
									)
								)
							)
						)
					)
				)
			)
		)
	)
)
(assert (= (leafSat leaf_b) leaf_b_Sat))

;/////leaf_c////
(declare-const leaf_c_Char Char)
(assert (= leaf_c_Char _c_))
(assert (= (leafLength leaf_c) 1))
(define-fun leaf_c_Sat () Bool
	(forall ((V0_index Int))
		(=>
			(and
				(>= V0_index 0)
				(< V0_index (select branch_V0_Ar 0))
			)
			(forall ((V1_index Int))
				(=>
					(and
						(>= V1_index 0)
						(< V1_index (select branch_V1_Ar V0_index))
					)
					;now we have all the combinations of valid indices in our hand
					(= leaf_c_Char 
						(charOf 
							inputString
							(+
								patternBegin			;NOTICE: again, since 'a' and 'b' happen before 'c' on the V1 level, we add 1 to the V1_index
														;when computing how many groups are coming before 'c'.
								(* (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (arraySum branch_V2_Ar (+ 1 V1_index (arraySum branch_V1_Ar V0_index)))));
								(* (leafLength leaf_b) (arraySum branch_V2_Ar (+ 1 V1_index (arraySum branch_V1_Ar V0_index))))
								(* (leafLength leaf_c) (+ V1_index (arraySum branch_V1_Ar V0_index)))
								(* (leafLength leaf_d) V0_index)
							)
						)
					)
				)
			)
		)
	)
)
(assert (= (leafSat leaf_c) leaf_c_Sat))

;/////leaf_d////
(declare-const leaf_d_Char Char)
(assert (= leaf_d_Char _d_))
(assert (= (leafLength leaf_d) 1))
(define-fun leaf_d_Sat () Bool
	(forall ((V0_index Int))
		(=>
			(and
				(>= V0_index 0)
				(< V0_index (select branch_V0_Ar 0))
			)
			(= leaf_d_Char 
				(charOf 
					inputString
					(+
						patternBegin
						(* (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (arraySum branch_V2_Ar (arraySum branch_V1_Ar (+ 1 V0_index)))));
						(* (leafLength leaf_b) (arraySum branch_V2_Ar (arraySum branch_V1_Ar (+ 1 V0_index))))
						(* (leafLength leaf_c) (arraySum branch_V1_Ar (+ 1 V0_index)))
						(* (leafLength leaf_d) V0_index)
					)
				)
			)
		)
	)
)
(assert (= (leafSat leaf_d) leaf_d_Sat))

;/////leaf_e////
(declare-const leaf_e_Char Char)
(assert (= leaf_e_Char _e_))
(assert (= (leafLength leaf_e) 1))
(define-fun leaf_e_Sat () Bool
	(= 
		(charOf 
			inputString 
			(+ 
				patternBegin
				(* (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (arraySum branch_V2_Ar (arraySum branch_V1_Ar (select branch_V0_Ar 0)))))
				(* (leafLength leaf_b) (arraySum branch_V2_Ar (arraySum branch_V1_Ar (select branch_V0_Ar 0))))
				(* (leafLength leaf_c) (arraySum branch_V1_Ar (select branch_V0_Ar 0))) 
				(* (leafLength leaf_d) (select branch_V0_Ar 0))
			)
		) 
		leaf_e_Char
	)
)
(assert (= (leafSat leaf_e) leaf_e_Sat))


;//////////////////////////Solve///////////////////////////////


;the is the top-level assertion: all the leaves have to be satisfied
(assert 
	(and
		(leafSat leaf_aPlus)
		(leafSat leaf_b)
		(leafSat leaf_c)
		(leafSat leaf_d)
		(leafSat leaf_e)
	)
)
(push)


;this inputString should satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _b_ ))
(assert (= (charOf inputString 2) _c_ ))
(assert (= (charOf inputString 3) _d_ ))
(assert (= (charOf inputString 4) _e_ ))
(assert (= (length inputString) 5))
(check-sat)
(get-value (patternBegin))
(get-value (branch_V0_L))
(get-value (branch_V1_L))
(get-value (branch_V2_L))
(get-value ((select branch_V0_Ar 0)))
(get-value ((select branch_V0_Ar 1)))
(get-value ((select branch_V1_Ar 0)))
(get-value ((select branch_V1_Ar 1)))
(get-value ((select branch_V2_Ar 0)))
(get-value ((select branch_V2_Ar 1)))
(get-value ((select leaf_aPlus_Ar 0)))
(get-value ((select leaf_aPlus_Ar 1)))
(pop)
(push)


;this inputString should satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _a_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _a_ ))
(assert (= (charOf inputString 4) _b_ ))
(assert (= (charOf inputString 5) _c_ ))
(assert (= (charOf inputString 6) _d_ ))
(assert (= (charOf inputString 7) _e_ ))
(assert (= (length inputString) 8))
(check-sat)
(get-value (patternBegin))
(get-value (branch_V0_L))
(get-value (branch_V1_L))
(get-value (branch_V2_L))
(get-value ((select branch_V0_Ar 0)))
(get-value ((select branch_V0_Ar 1)))
(get-value ((select branch_V1_Ar 0)))
(get-value ((select branch_V1_Ar 1)))
(get-value ((select branch_V2_Ar 0)))
(get-value ((select branch_V2_Ar 1)))
(get-value ((select leaf_aPlus_Ar 0)))
(get-value ((select leaf_aPlus_Ar 1)))
(pop)
(push)


;TODO- refine examples below here

;this inputString should satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _b_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _a_ ))
(assert (= (charOf inputString 4) _b_ ))
(assert (= (charOf inputString 5) _c_ ))
(assert (= (charOf inputString 6) _c_ ))
(assert (= (charOf inputString 7) _d_ ))
(assert (= (charOf inputString 8) _e_ ))
(assert (= (length inputString) 9))
(check-sat)
(get-value (patternBegin))
(pop)
(push)


;this inputString should satisfy
(assert (= (charOf inputString 0) _g_ ))
(assert (= (charOf inputString 1) _a_ ))
(assert (= (charOf inputString 2) _b_ ))
(assert (= (charOf inputString 3) _c_ ))
(assert (= (charOf inputString 4) _a_ ))
(assert (= (charOf inputString 5) _a_ ))
(assert (= (charOf inputString 6) _a_ ))
(assert (= (charOf inputString 7) _a_ ))
(assert (= (charOf inputString 8) _b_ ))
(assert (= (charOf inputString 9) _a_ ))
(assert (= (charOf inputString 10) _b_ ))
(assert (= (charOf inputString 11) _a_ ))
(assert (= (charOf inputString 12) _a_ ))
(assert (= (charOf inputString 13) _b_ ))
(assert (= (charOf inputString 14) _c_ ))
(assert (= (charOf inputString 15) _d_ ))
(assert (= (charOf inputString 16) _e_ ))
(assert (= (charOf inputString 17) _t_ ))
(assert (= (length inputString) 18))
(check-sat)
(get-value (patternBegin))
(pop)
(push)


;aaaaaabcababababcdcdabaababcccde
;this inputString should satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _a_ ))
(assert (= (charOf inputString 2) _a_ ))
(assert (= (charOf inputString 3) _a_ ))
(assert (= (charOf inputString 4) _a_ ))
(assert (= (charOf inputString 5) _a_ ))
(assert (= (charOf inputString 6) _b_ ))
(assert (= (charOf inputString 7) _c_ ))
(assert (= (charOf inputString 8) _a_ ))
(assert (= (charOf inputString 9) _b_ ))
(assert (= (charOf inputString 10) _a_ ))
(assert (= (charOf inputString 11) _b_ ))
(assert (= (charOf inputString 12) _a_ ))
(assert (= (charOf inputString 13) _b_ ))
(assert (= (charOf inputString 14) _a_ ))
(assert (= (charOf inputString 15) _b_ ))
(assert (= (charOf inputString 16) _c_ ))
(assert (= (charOf inputString 17) _d_ ))
(assert (= (charOf inputString 18) _c_ ))
(assert (= (charOf inputString 19) _d_ ))
(assert (= (charOf inputString 20) _a_ ))
(assert (= (charOf inputString 21) _b_ ))
(assert (= (charOf inputString 22) _a_ ))
(assert (= (charOf inputString 23) _a_ ))
(assert (= (charOf inputString 24) _b_ ))
(assert (= (charOf inputString 25) _a_ ))
(assert (= (charOf inputString 26) _b_ ))
(assert (= (charOf inputString 27) _c_ ))
(assert (= (charOf inputString 28) _c_ ))
(assert (= (charOf inputString 29) _c_ ))
(assert (= (charOf inputString 30) _d_ ))
(assert (= (charOf inputString 31) _e_ ))
(assert (= (length inputString) 32))
(check-sat)
(get-value (patternBegin))
(pop)
(push)

;this inputString should not satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _b_ ))
(assert (= (length inputString) 2))
(check-sat)
(pop)
(push)


;this inputString should not satisfy
(assert (= (charOf inputString 0) _a_ ))
(assert (= (charOf inputString 1) _b_ ))
(assert (= (charOf inputString 2) _b_ ))
(assert (= (charOf inputString 3) _c_ ))
(assert (= (length inputString) 4))
(check-sat)
(pop)
(push)


;this inputString should not satisfy
(assert (= (charOf inputString 0) _c_ ))
(assert (= (charOf inputString 1) _b_ ))
(assert (= (charOf inputString 2) _b_ ))
(assert (= (charOf inputString 3) _c_ ))
(assert (= (length inputString) 4))
(check-sat)
(pop)
(push)


(exit)
