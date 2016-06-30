
;####INPUT_LENGTH_DEPENDENT_PREAMBLE####

;small theory here
;arraySum function here

(declare-sort Small 0)
(declare-fun downcast (Small) Int)
(declare-fun upcast (Int) Small)
(declare-const maxSmallValue Int)(assert (= maxSmallValue 10))


(declare-const S_OUTOFBOUNDS Small)(assert (= (downcast S_OUTOFBOUNDS) (* maxSmallValue 1000)))
(declare-const S_0 Small)(assert (= (downcast S_0) 0))(assert (= (upcast 0) S_0))(declare-const S_1 Small)(assert (= (downcast S_1) 1))(assert (= (upcast 1) S_1))(declare-const S_2 Small)(assert (= (downcast S_2) 2))(assert (= (upcast 2) S_2))(declare-const S_3 Small)(assert (= (downcast S_3) 3))(assert (= (upcast 3) S_3))(declare-const S_4 Small)(assert (= (downcast S_4) 4))(assert (= (upcast 4) S_4))(declare-const S_5 Small)(assert (= (downcast S_5) 5))(assert (= (upcast 5) S_5))(declare-const S_6 Small)(assert (= (downcast S_6) 6))(assert (= (upcast 6) S_6))(declare-const S_7 Small)(assert (= (downcast S_7) 7))(assert (= (upcast 7) S_7))(declare-const S_8 Small)(assert (= (downcast S_8) 8))(assert (= (upcast 8) S_8))(declare-const S_9 Small)(assert (= (downcast S_9) 9))(assert (= (upcast 9) S_9))(declare-const S_10 Small)(assert (= (downcast S_10) 10))(assert (= (upcast 10) S_10))

(assert (forall ((s Small)) (or (= s S_OUTOFBOUNDS) (and (>= (downcast s) 0) (<= (downcast s) maxSmallValue)))))
(assert (forall ((i Int)) (=> (or (< i 0)(> i maxSmallValue))(= (upcast i) S_OUTOFBOUNDS))))

(assert (distinct  S_0  S_1  S_2  S_3  S_4  S_5  S_6  S_7  S_8  S_9  S_10  S_OUTOFBOUNDS ))
(assert (forall ((small Small)) (or (= S_0 small)(= S_1 small)(= S_2 small)(= S_3 small)(= S_4 small)(= S_5 small)(= S_6 small)(= S_7 small)(= S_8 small)(= S_9 small)(= S_10 small)(= S_OUTOFBOUNDS small))))

(define-fun arraySum ((inputArray (Array Small Small))(arrayLength Small)) Small
	(ite
(= arrayLength S_0)S_0(ite
(= arrayLength S_1)(select inputArray S_0)(ite
(= arrayLength S_2)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))))(ite
(= arrayLength S_3)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))))(ite
(= arrayLength S_4)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))))(ite
(= arrayLength S_5)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))(downcast (select inputArray S_4))))(ite
(= arrayLength S_6)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))(downcast (select inputArray S_4))(downcast (select inputArray S_5))))(ite
(= arrayLength S_7)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))(downcast (select inputArray S_4))(downcast (select inputArray S_5))(downcast (select inputArray S_6))))(ite
(= arrayLength S_8)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))(downcast (select inputArray S_4))(downcast (select inputArray S_5))(downcast (select inputArray S_6))(downcast (select inputArray S_7))))(ite
(= arrayLength S_9)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))(downcast (select inputArray S_4))(downcast (select inputArray S_5))(downcast (select inputArray S_6))(downcast (select inputArray S_7))(downcast (select inputArray S_8))))(ite
(= arrayLength S_10)(upcast (+ (downcast (select inputArray S_0))(downcast (select inputArray S_1))(downcast (select inputArray S_2))(downcast (select inputArray S_3))(downcast (select inputArray S_4))(downcast (select inputArray S_5))(downcast (select inputArray S_6))(downcast (select inputArray S_7))(downcast (select inputArray S_8))(downcast (select inputArray S_9))))S_OUTOFBOUNDS
))))))))))))


(define-fun S_lt ((arg1 Small) (arg2 Small)) bool (< (downcast arg1) (downcast arg2)))
(define-fun S_lteq ((arg1 Small) (arg2 Small)) bool (<= (downcast arg1) (downcast arg2)))
(define-fun S_gteq ((arg1 Small) (arg2 Small)) bool (>= (downcast arg1) (downcast arg2)))
(define-fun S_sum ((arg1 Small) (arg2 Small)) Small (upcast (+ (downcast arg1) (downcast arg2))))
(define-fun S_mult_I ((arg1 Small) (arg2 Small)) Int (* (downcast arg1) (downcast arg2)))
;(define-fun S_eq ((arg1 Small)(arg2 Small)) bool (= (downcast arg1) (downcast arg2)))


;####CONSTANT_PREAMBLE####
;/////////////////////////Define Char theory/////////////////
(declare-sort Char 0)

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

;/////////////////////////Define String theory/////////////////
(declare-sort String 0)
(declare-fun length (String) Small)
(declare-fun charOf (String Small) Char)

;force all unmapped indices to _OUTOFBOUNDS_ to
;avoid false positive models
(assert 
	(forall ((goodString String))
		(forall ((badIndex Small))
			(=>
				(S_gteq badIndex (length goodString))
				(= (charOf goodString badIndex) _OUTOFBOUNDS_) 
			)
		)	
	)
)

;####ENCODED_REGEX_DECLARATIONS####

;declare the input string variable
;the index mapping for inputString goes at the end so that many strings can be pushed and popped
(declare-fun inputString () String)

;declare the variable where the pattern begins, solver should choose this
(declare-const patternBegin Small)
(assert 
	(S_lt patternBegin (length inputString))
)

;declare organizational functions


(declare-sort Leaf 0)

;instantiate the leaves for this pattern:

(declare-fun leaf_aPlus () Leaf)
(declare-fun leaf_b () Leaf)
(declare-fun leaf_c () Leaf)
(declare-fun leaf_d () Leaf)
(declare-fun leaf_e () Leaf)



(declare-const branch_V0_Ar (Array Small Small))
(declare-const branch_V1_Ar (Array Small Small))
(declare-const branch_V2_Ar (Array Small Small))

(declare-const leaf_aPlus_Ar (Array Small Small))


;leaf aPlus array contents need to be between 1 and MAX
(assert 
	(forall ((aPlus_index Small))
		(=>
			(S_lt aPlus_index (arraySum branch_V2_Ar (arraySum branch_V1_Ar (select branch_V0_Ar S_0))))
			(and
				(S_gteq (select leaf_aPlus_Ar aPlus_index) S_1)
				(S_lteq (select leaf_aPlus_Ar aPlus_index) (length inputString))
			)	
		)
	)
)

;branch V0 is a '+' style repetition, so it must repeat between 1 and MAX times
(assert 
	(and
		(S_gteq (select branch_V0_Ar S_0) S_1)
		(S_lteq (select branch_V0_Ar S_0) (length inputString))
	)	
)


;branch V1 is a '+' style repetition, so all of its vines must repeat between 1 and MAX times
(assert 
	(forall ((V0_index Small))
		(=>
			(S_lt V0_index (select branch_V0_Ar S_0))
			(and
				(S_gteq (select branch_V1_Ar V0_index) S_1)
				(S_lteq (select branch_V1_Ar V0_index) (length inputString))
			)
		)	
	)
)

;branch V2 is a '*' style repetition, so all of its vines must repeat between 0 and MAX times
;this requires no special assertions usually.  Here we assert less than max 
;for development with a small value larger than input size
(assert 
	(forall ((V2_index Small))
		(=>
			(S_lt V2_index (arraySum branch_V1_Ar (select branch_V0_Ar S_0)))
			(S_lteq (select branch_V2_Ar V2_index) (length inputString))
		)	
	)
)




;////////////////////////Specify satisfaction at the leaf level//////////////////

(declare-fun leafLength (Leaf) Small)
(declare-fun leafSat (Leaf) Bool); this is true iff the leaf is sat for all indices it should be sat at


;/////leaf_aPlus////
(declare-const leaf_aPlus_Char Char)
(assert (= leaf_aPlus_Char _a_))
(assert (= (leafLength leaf_aPlus) S_1))
(define-fun leaf_aPlus_Sat () Bool
	(forall ((V0_index Small))
		(=>
			(S_lt V0_index (select branch_V0_Ar S_0))
			(forall ((V1_index Small))
				(=>
					(S_lt V1_index (select branch_V1_Ar V0_index))
					(forall ((V2_index Small))
						(=>
							(S_lt V2_index (select branch_V2_Ar V1_index))
							(forall ((R_index Small))
								(=>
									(S_lt R_index (select leaf_aPlus_Ar (S_sum V2_index (arraySum branch_V2_Ar (S_sum V1_index (arraySum branch_V1_Ar V0_index))))))
									(= leaf_aPlus_Char 
										(charOf 
											inputString
											(upcast 
												(+
													(downcast patternBegin)
													(S_mult_I (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (S_sum V2_index (arraySum branch_V2_Ar (S_sum V1_index (arraySum branch_V1_Ar V0_index))))));
													(S_mult_I (leafLength leaf_b) (S_sum V2_index (arraySum branch_V2_Ar (S_sum V1_index (arraySum branch_V1_Ar V0_index)))))
													(S_mult_I (leafLength leaf_c) (S_sum V1_index (arraySum branch_V1_Ar V0_index)))
													(S_mult_I (leafLength leaf_d) V0_index)
													(downcast R_index)
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
)
(assert (= (leafSat leaf_aPlus) leaf_aPlus_Sat))


;NOTICE: because 'a' happens before 'b' on the same level as 'b', we add 1 to the V2_index (that level), 
;when considering how many 'a's to count.  This pattern applies at all levels, for branches as well
;that are on the same level as a leaf, see notice in leaf_c below
;/////leaf_b////
(declare-const leaf_b_Char Char)
(assert (= leaf_b_Char _b_))
(assert (= (leafLength leaf_b) S_1))
(define-fun leaf_b_Sat () Bool
	(forall ((V0_index Small))
		(=>
			(S_lt V0_index (select branch_V0_Ar S_0))
			(forall ((V1_index Small))
				(=>
					(S_lt V1_index (select branch_V1_Ar V0_index))
					(forall ((V2_index Small))
						(=>
							(S_lt V2_index (select branch_V2_Ar V1_index))
							(= leaf_b_Char 
								(charOf 
									inputString
									(upcast
										(+
											(downcast patternBegin)
											(S_mult_I (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (S_sum S_1 (S_sum V2_index (arraySum branch_V2_Ar (S_sum V1_index (arraySum branch_V1_Ar V0_index)))))))
											(S_mult_I (leafLength leaf_b) (S_sum  V2_index (arraySum branch_V2_Ar (S_sum V1_index (arraySum branch_V1_Ar V0_index)))))
											(S_mult_I (leafLength leaf_c) (S_sum V1_index (arraySum branch_V1_Ar V0_index)))
											(S_mult_I (leafLength leaf_d) V0_index)
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
(assert (= (leafSat leaf_b) leaf_b_Sat))

;/////leaf_c////
(declare-const leaf_c_Char Char)
(assert (= leaf_c_Char _c_))
(assert (= (leafLength leaf_c) S_1))
(define-fun leaf_c_Sat () Bool
	(forall ((V0_index Small))
		(=>
			(S_lt V0_index (select branch_V0_Ar S_0))
			(forall ((V1_index Small))
				(=>
					(S_lt V1_index (select branch_V1_Ar V0_index))

					;now we have all the combinations of valid indices in our hand
					(= leaf_c_Char 
						(charOf 
							inputString
							(upcast 
								(+
									(downcast patternBegin)			
									(S_mult_I (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (arraySum branch_V2_Ar (S_sum S_1 (S_sum V1_index (arraySum branch_V1_Ar V0_index))))))
									(S_mult_I (leafLength leaf_b) (arraySum branch_V2_Ar (S_sum S_1 (S_sum V1_index (arraySum branch_V1_Ar V0_index)))))
									(S_mult_I (leafLength leaf_c) (S_sum V1_index (arraySum branch_V1_Ar V0_index)))
									(S_mult_I (leafLength leaf_d) V0_index)
								)
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
(assert (= (leafLength leaf_d) S_1))
(define-fun leaf_d_Sat () Bool
	(forall ((V0_index Small))
		(=>
			(S_lt V0_index (select branch_V0_Ar S_0))
			(= leaf_d_Char 
				(charOf 
					inputString
					(upcast
						(+
							(downcast patternBegin)
							(S_mult_I (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (arraySum branch_V2_Ar (arraySum branch_V1_Ar (S_sum S_1 V0_index)))))
							(S_mult_I (leafLength leaf_b) (arraySum branch_V2_Ar (arraySum branch_V1_Ar (S_sum S_1 V0_index))))
							(S_mult_I (leafLength leaf_c) (arraySum branch_V1_Ar (S_sum S_1 V0_index)))
							(S_mult_I (leafLength leaf_d) V0_index)
						)
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
(assert (= (leafLength leaf_e) S_1))
(define-fun leaf_e_Sat () Bool
	(= 
		(charOf 
			inputString 
			(upcast 
				(+ 
					(downcast patternBegin)
					(S_mult_I (leafLength leaf_aPlus) (arraySum leaf_aPlus_Ar (arraySum branch_V2_Ar (arraySum branch_V1_Ar (select branch_V0_Ar S_0)))))
					(S_mult_I (leafLength leaf_b) (arraySum branch_V2_Ar (arraySum branch_V1_Ar (select branch_V0_Ar S_0))))
					(S_mult_I (leafLength leaf_c) (arraySum branch_V1_Ar (select branch_V0_Ar S_0))) 
					(S_mult_I (leafLength leaf_d) (select branch_V0_Ar S_0))
				)
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
(assert (= (charOf inputString S_0) _a_ ))
(assert (= (charOf inputString S_1) _b_ ))
(assert (= (charOf inputString S_2) _c_ ))
(assert (= (charOf inputString S_3) _d_ ))
(assert (= (charOf inputString S_4) _e_ ))
(assert (= (length inputString) S_5))
(check-sat)
(get-value (patternBegin))
(get-value ((select branch_V0_Ar S_0)))
(get-value ((select branch_V0_Ar S_1)))
(get-value ((select branch_V1_Ar S_0)))
(get-value ((select branch_V1_Ar S_1)))
(get-value ((select branch_V2_Ar S_0)))
(get-value ((select branch_V2_Ar S_1)))
(get-value ((select leaf_aPlus_Ar S_0)))
(get-value ((select leaf_aPlus_Ar S_1)))
(pop)
(push)


;this inputString should satisfy
(assert (= (charOf inputString S_0) _a_ ))
(assert (= (charOf inputString S_1) _a_ ))
(assert (= (charOf inputString S_2) _a_ ))
(assert (= (charOf inputString S_3) _a_ ))
(assert (= (charOf inputString S_4) _b_ ))
(assert (= (charOf inputString S_5) _c_ ))
(assert (= (charOf inputString S_6) _d_ ))
(assert (= (charOf inputString S_7) _e_ ))
(assert (= (length inputString) S_8))
(check-sat)
(get-value (patternBegin))
(get-value ((select branch_V0_Ar S_0)))
(get-value ((select branch_V0_Ar S_1)))
(get-value ((select branch_V1_Ar S_0)))
(get-value ((select branch_V1_Ar S_1)))
(get-value ((select branch_V2_Ar S_0)))
(get-value ((select branch_V2_Ar S_1)))
(get-value ((select leaf_aPlus_Ar S_0)))
(get-value ((select leaf_aPlus_Ar S_1)))
(pop)
(push)


;TODO- refine examples below here

;this inputString should satisfy
(assert (= (charOf inputString S_0) _a_ ))
(assert (= (charOf inputString S_1) _b_ ))
(assert (= (charOf inputString S_2) _a_ ))
(assert (= (charOf inputString S_3) _a_ ))
(assert (= (charOf inputString S_4) _b_ ))
(assert (= (charOf inputString S_5) _c_ ))
(assert (= (charOf inputString S_6) _c_ ))
(assert (= (charOf inputString S_7) _d_ ))
(assert (= (charOf inputString S_8) _e_ ))
(assert (= (length inputString) S_9))
(check-sat)
(get-value (patternBegin))
(pop)
(push)


;this inputString should satisfy
(assert (= (charOf inputString S_0) _g_ ))
(assert (= (charOf inputString S_1) _a_ ))
(assert (= (charOf inputString S_2) _b_ ))
(assert (= (charOf inputString S_3) _c_ ))
(assert (= (charOf inputString S_4) _a_ ))
(assert (= (charOf inputString S_5) _a_ ))
(assert (= (charOf inputString S_6) _a_ ))
(assert (= (charOf inputString S_7) _a_ ))
(assert (= (charOf inputString S_8) _b_ ))
(assert (= (charOf inputString S_9) _a_ ))
(assert (= (charOf inputString S_10) _b_ ))
(assert (= (charOf inputString S_11) _a_ ))
(assert (= (charOf inputString S_12) _a_ ))
(assert (= (charOf inputString S_13) _b_ ))
(assert (= (charOf inputString S_14) _c_ ))
(assert (= (charOf inputString S_15) _d_ ))
(assert (= (charOf inputString S_16) _e_ ))
(assert (= (charOf inputString S_17) _t_ ))
(assert (= (length inputString) S_18))
(check-sat)
(get-value (patternBegin))
(pop)
(push)


;aaaaaabcababababcdcdabaababcccde
;this inputString should satisfy
(assert (= (charOf inputString S_0) _a_ ))
(assert (= (charOf inputString S_1) _a_ ))
(assert (= (charOf inputString S_2) _a_ ))
(assert (= (charOf inputString S_3) _a_ ))
(assert (= (charOf inputString S_4) _a_ ))
(assert (= (charOf inputString S_5) _a_ ))
(assert (= (charOf inputString S_6) _b_ ))
(assert (= (charOf inputString S_7) _c_ ))
(assert (= (charOf inputString S_8) _a_ ))
(assert (= (charOf inputString S_9) _b_ ))
(assert (= (charOf inputString S_10) _a_ ))
(assert (= (charOf inputString S_11) _b_ ))
(assert (= (charOf inputString S_12) _a_ ))
(assert (= (charOf inputString S_13) _b_ ))
(assert (= (charOf inputString S_14) _a_ ))
(assert (= (charOf inputString S_15) _b_ ))
(assert (= (charOf inputString S_16) _c_ ))
(assert (= (charOf inputString S_17) _d_ ))
(assert (= (charOf inputString S_18) _c_ ))
(assert (= (charOf inputString S_19) _d_ ))
(assert (= (charOf inputString S_20) _a_ ))
(assert (= (charOf inputString S_21) _b_ ))
(assert (= (charOf inputString S_22) _a_ ))
(assert (= (charOf inputString S_23) _a_ ))
(assert (= (charOf inputString S_24) _b_ ))
(assert (= (charOf inputString S_25) _a_ ))
(assert (= (charOf inputString S_26) _b_ ))
(assert (= (charOf inputString S_27) _c_ ))
(assert (= (charOf inputString S_28) _c_ ))
(assert (= (charOf inputString S_29) _c_ ))
(assert (= (charOf inputString S_30) _d_ ))
(assert (= (charOf inputString S_31) _e_ ))
(assert (= (length inputString) S_32))
(check-sat)
(get-value (patternBegin))
(pop)
(push)

;this inputString should not satisfy
(assert (= (charOf inputString S_0) _a_ ))
(assert (= (charOf inputString S_1) _b_ ))
(assert (= (length inputString) S_2))
(check-sat)
(pop)
(push)


;this inputString should not satisfy
(assert (= (charOf inputString S_0) _a_ ))
(assert (= (charOf inputString S_1) _b_ ))
(assert (= (charOf inputString S_2) _b_ ))
(assert (= (charOf inputString S_3) _c_ ))
(assert (= (length inputString) S_4))
(check-sat)
(pop)
(push)


;this inputString should not satisfy
(assert (= (charOf inputString S_0) _c_ ))
(assert (= (charOf inputString S_1) _b_ ))
(assert (= (charOf inputString S_2) _b_ ))
(assert (= (charOf inputString S_3) _c_ ))
(assert (= (length inputString) S_4))
(check-sat)
(pop)
(push)


(exit)
