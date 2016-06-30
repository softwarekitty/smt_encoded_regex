;PROBLEM STATEMENT: 
;determine if one regex is a suitable abstraction for another.
;this is the case if for all strings, if the first 
;is unsatisfiable then the second is also unsatisfiable



;make two regexes - r1, r2
;the abstraction should subsume the target negatively
;but target can have untracked positive behavior
;then we want to check that not r1 implies not r2 for all strings up to a length.





;r1: ab
;r2: ab+c
(declare-const LENGTH Int)(assert (= LENGTH 4))

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

;constrain String lengths
(assert 
	(forall ((anyString String))
        (and 
            (>= (length anyString) 0)
            (<= (length anyString) LENGTH)
        )
	)
)

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

;////////////////////////Specify satisfaction at the leaf level//////////////////

;///////////////leaf_a_r1/////////////////
(define-fun leaf_a_r1_Sat ((inputString String)(patternBegin_r1 Int)) Bool (= _a_ (charOf inputString patternBegin_r1)))

;///////////////leaf_b_r1/////////////////
(define-fun leaf_b_r1_Sat ((inputString String)(patternBegin_r1 Int)) Bool (= _b_ (charOf inputString 1)))




;///////////////leaf_a_r2/////////////////
(define-fun leaf_a_r2_Sat ((inputString String)(patternBegin_r2 Int)) Bool (= _a_ (charOf inputString patternBegin_r2)))

;///////////////leaf_bPlus_r2/////////////////
(define-fun leaf_bPlus_r2_Sat ((inputString String)(patternBegin_r2 Int)(bReps Int)) Bool
	(forall ((iR Int))
		(=>
			(and
				(>= iR 0)
				(< iR bReps)
			)
			(= _b_ (charOf inputString (+ patternBegin_r2 iR 1)))
		)
	)
)


;///////////////leaf_c_r2/////////////////
(define-fun leaf_c_r2_Sat ((inputString String)(patternBegin_r2 Int)(bReps Int)) Bool (= _c_ (charOf inputString (+ patternBegin_r2 1 bReps))))





;//////////////////////////Define Regexes///////////////////////////////

(define-fun r1_Sat ((inputString String)(patternBegin_r1 Int)) Bool 	
    (and
		(leaf_a_r1_Sat inputString patternBegin_r1)
		(leaf_b_r1_Sat inputString patternBegin_r1)
	)
)

(define-fun r2_Sat ((inputString String)(patternBegin_r2 Int)(bReps Int)) Bool 	
    (and
		(leaf_a_r2_Sat inputString patternBegin_r2)
		(leaf_bPlus_r2_Sat inputString patternBegin_r2 bReps)
		(leaf_c_r2_Sat inputString patternBegin_r2 bReps)
	)
)


(declare-fun V2 () String)
(assert (= (charOf V2 0) _a_ ))
(assert (= (charOf V2 1) _b_ ))
(assert (= (charOf V2 2) _b_ ))
(assert (= (length V2) 3))



;/////////////TEST 1: r2 needs c//////////////////

;////separate solver-chosen vars to avoid confusion///
(declare-const bReps_TEST1 Int)
(assert (and (>= bReps_TEST1 1)(<= bReps_TEST1 LENGTH)))
(declare-const patternBegin_TEST1 Int)
(assert (and (>= patternBegin_TEST1 0)(< patternBegin_TEST1 LENGTH)))

;////top-level assertion///
(push)
(assert (r2_Sat V2 patternBegin_TEST1 bReps_TEST1))
(check-sat)
(pop)
;
;unsat: no possible combination of patternBegin or bReps will satisfy leaf_c





;/////////////TEST 2: r1 does not need c//////////////////

;////separate solver-chosen vars to avoid confusion///
(declare-const patternBegin_TEST2 Int)
(assert (and (>= patternBegin_TEST2 0)(< patternBegin_TEST2 LENGTH)))

;////top-level assertion///
(push)
(assert (r1_Sat V2 patternBegin_TEST2))
(check-sat)
(pop)
;sat because 'ab' is found with patternBegin=0





;/////////////TEST 3: naive check of r1 backfires//////////////////
;/////////////both true and false are satisfiable//////////////////

;////separate solver-chosen vars to avoid confusion///
(declare-const patternBegin_TEST3A Int)
(assert (and (>= patternBegin_TEST3A 0)(< patternBegin_TEST3A LENGTH)))
(declare-const patternBegin_TEST3B Int)
(assert (and (>= patternBegin_TEST3B 0)(< patternBegin_TEST3B LENGTH)))

;////top-level assertion///
(push)
(assert (r1_Sat V2 patternBegin_TEST3A))
(assert (not (r1_Sat V2 patternBegin_TEST3B)))
(check-sat)
(pop)
;sat if patternBegin_TEST3A=0, patternBegin_TEST3B=1





;/////////////TEST 4: better: there is no legal way to satisfy r1?//////////////////
(push)
(assert
    (forall ((pb Int))
        (=>
            (and (>= pb 0)(< pb LENGTH))
            (not (r1_Sat V2 pb))
        )
    )
)
(check-sat)
(pop)
;unsat - there is a way because when pb=0, r1_Sat is true


;/////////////TEST 5: there is no legal way to satisfy r2?//////////////////
(push)
(assert
    (forall ((pb Int)(bR Int))
        (=>
            (and (>= pb 0)(< pb LENGTH)(>= bR 1)(<= bR LENGTH))
            (not (r2_Sat V2 pb bR))
        )
    )
)
(check-sat)
(pop)
;sat - there is no legal pb or bR combo with String 'abb' to satisfy regex 'ab*c'



;/////////////TEST 6: the naive approach to the abstraction problem/////////////////

;////separate solver-chosen vars to avoid confusion///
(declare-const patternBegin_TEST6A Int)
(assert (and (>= patternBegin_TEST6A 0)(< patternBegin_TEST6A LENGTH)))
(declare-const patternBegin_TEST6B Int)
(assert (and (>= patternBegin_TEST6B 0)(< patternBegin_TEST6B LENGTH)))
(declare-const bReps_TEST6 Int)
(assert (and (>= bReps_TEST6 1)(<= bReps_TEST6 LENGTH)))

(push)
(assert
    (=>
        (not (r2_Sat V2 patternBegin_TEST6A bReps_TEST6))
        (not (r1_Sat V2 patternBegin_TEST6B))
    )
)
(check-sat)
(pop)
;originally I hoped this would be unsat bc. true->false
;expecting that r2_Sat produced a false result:

;r2_Sat is false
;not r2_Sat is true

;r1_Sat is true
;not r1_Sat is false

;but as shown in test 3, that's not the way to express this for the solver



;/////////////TEST 7: the better approach to the abstraction problem/////////////////

(push)
(assert
    (forall ((possibleString String))
        (=>
            (forall ((pb1 Int))
                (=>
                    (and (>= pb1 0)(< pb1 LENGTH))
                    (not (r1_Sat possibleString pb1))
                )
            )
            (forall ((pb2 Int)(bR Int))
                (=>
                    (and (>= pb2 0)(< pb2 LENGTH)(>= bR 1)(<= bR LENGTH))
                    (not (r2_Sat possibleString pb2 bR))
                )
            )
        )
    )
)
(check-sat)
(pop)
;sat because r1 is a good abstraction for r2
;if there is no legal solution for r1, there is no legal solution for r2
;Note: they don't have to begin at the same index


;/////////////TEST 8: verify that r2 is not a good abstraction for r1/////////////////

(push)
(assert
    (forall ((possibleString String))
        (=>
            (forall ((pb2 Int)(bR Int))
                (=>
                    (and (>= pb2 0)(< pb2 LENGTH)(>= bR 1)(<= bR LENGTH))
                    (not (r2_Sat possibleString pb2 bR))
                )
            )
            (forall ((pb1 Int))
                (=>
                    (and (>= pb1 0)(< pb1 LENGTH))
                    (not (r1_Sat possibleString pb1))
                )
            )
        )
    )
)
(check-sat)
(pop)
;unsat because for some possible strings, there can be a
;legal solution for r2 that is not a legal solution to r1