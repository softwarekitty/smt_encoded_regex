;pattern: a{3,4}b
(set-logic UFNIA)
;(set-option :produce-proofs true)

;citation for where this string model came from: 
;http://stackoverflow.com/questions/7126839/can-z3-be-used-to-reason-about-substrings
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
(declare-fun __ () Char)		;what character is this?
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
(declare-fun _mid_ () Char)    ;what character is this? pipe?
(declare-fun _dollar_ () Char)
(declare-fun _newline_ () Char)
(declare-fun _tab_ () Char)
(declare-fun _return_ () Char)
(declare-fun _slashf_ () Char)    ;what character is this? already have backslash, fwdslash.
(declare-fun _slashb_ () Char)    ;what character is this?
(declare-fun _ERROR_ () Char)

(assert (distinct __ _a_ _b_ _c_ _d_ _e_ _f_ _g_ _h_ _i_ _j_ _k_ _l_ _m_ _n_ _o_ _p_ _q_ _r_ _s_ _t_ _u_ _v_ _w_ _x_ _y_ _z_
	 _A_ _B_ _C_ _D_ _E_ _F_ _G_ _H_ _I_ _J_ _K_ _L_ _M_ _N_ _O_ _P_ _Q_ _R_ _S_ _T_ _U_ _V_ _W_ _X_ _Y_ _Z_ 
	 _0_ _1_ _2_ _3_ _4_ _5_ _6_ _7_ _8_ _9_ 
	 _period_ _comma_ _colon_ _fwdslash_ _underscore_ _dblquote_ _siglequote_ _backslash_ _dash_ _question_ _openparen_ _closeparen_ _semicolon_ _lcurly_ _rcurly_ _equals_ _at_ _lbracket_ _rbracket_ _amp_ _excl_ _pound_ _percent_ _plus_ _star_ _carrot_ _tilde_ _backtick_ _langle_ _rangle_ _mid_ _dollar_ _newline_ _tab_ _return_ _slashf_ _slashb_ _ERROR_))

; getter functions for the string
(declare-fun length ( String ) Int )
(declare-fun charOf (String Int) Char)

;extensionality 
(assert (forall ((s1 String) (s2 String))
                (=> (and 
                     (= (length s1) (length s2))
                     (forall ((i Int))
                             (=> (and (<= 0 i) (< i (length s1)))
                                 (= (charOf s1 i) (charOf s2 i)))))
                    (= s1 s2))))

(declare-fun toLower (Char) Char)
(assert (= (toLower _A_) _a_))
(assert (= (toLower _B_) _b_))
(assert (= (toLower _C_) _c_))
(assert (= (toLower _D_) _d_))
(assert (= (toLower _E_) _e_))
(assert (= (toLower _F_) _f_))
(assert (= (toLower _G_) _g_))
(assert (= (toLower _H_) _h_))
(assert (= (toLower _I_) _i_))
(assert (= (toLower _J_) _j_))
(assert (= (toLower _K_) _k_))
(assert (= (toLower _L_) _l_))
(assert (= (toLower _M_) _m_))
(assert (= (toLower _N_) _n_))
(assert (= (toLower _O_) _o_))
(assert (= (toLower _P_) _p_))
(assert (= (toLower _Q_) _q_))
(assert (= (toLower _R_) _r_))
(assert (= (toLower _S_) _s_))
(assert (= (toLower _T_) _t_))
(assert (= (toLower _U_) _u_))
(assert (= (toLower _V_) _v_))
(assert (= (toLower _W_) _w_))
(assert (= (toLower _X_) _x_))
(assert (= (toLower _Y_) _y_))
(assert (= (toLower _Z_) _z_))


(declare-fun toUpper (Char) Char)
(assert (= (toUpper _a_) _A_))
(assert (= (toUpper _b_) _B_))
(assert (= (toUpper _c_) _C_))
(assert (= (toUpper _d_) _D_))
(assert (= (toUpper _e_) _E_))
(assert (= (toUpper _f_) _F_))
(assert (= (toUpper _g_) _G_))
(assert (= (toUpper _h_) _H_))
(assert (= (toUpper _i_) _I_))
(assert (= (toUpper _j_) _J_))
(assert (= (toUpper _k_) _K_))
(assert (= (toUpper _l_) _L_))
(assert (= (toUpper _m_) _M_))
(assert (= (toUpper _n_) _N_))
(assert (= (toUpper _o_) _O_))
(assert (= (toUpper _p_) _P_))
(assert (= (toUpper _q_) _Q_))
(assert (= (toUpper _r_) _R_))
(assert (= (toUpper _s_) _S_))
(assert (= (toUpper _t_) _T_))
(assert (= (toUpper _u_) _U_))
(assert (= (toUpper _v_) _V_))
(assert (= (toUpper _w_) _W_))
(assert (= (toUpper _x_) _X_))
(assert (= (toUpper _y_) _Y_))
(assert (= (toUpper _z_) _Z_))

(assert 
	(forall ((c Char))
		(=>
			(not (or (= c _a_) (= c _b_)(= c _c_)(= c _d_)(= c _e_)(= c _f_)(= c _g_)(= c _h_)(= c _i_)(= c _j_)(= c _k_)(= c _l_)(= c _m_)(= c _n_)(= c _o_)(= c _p_)(= c _q_)(= c _r_)(= c _s_)(= c _t_)(= c _u_)(= c _v_)(= c _w_)(= c _x_)(= c _y_)(= c _z_)))
			(= (toUpper c) c))))

(assert 
	(forall ((c Char))
		(=>
			(not (or (= c _A_) (= c _B_)(= c _C_)(= c _D_)(= c _E_)(= c _F_)(= c _G_)(= c _H_)(= c _I_)(= c _J_)(= c _K_)(= c _L_)(= c _M_)(= c _N_)(= c _O_)(= c _P_)(= c _Q_)(= c _R_)(= c _S_)(= c _T_)(= c _U_)(= c _V_)(= c _W_)(= c _X_)(= c _Y_)(= c _Z_)))
			(= (toLower c) c))))

;this V1 should satisfy - 4 a's, 1 b
;(declare-fun V1 () String)
;(assert (= (charOf V1 0) _a_ ))
;(assert (= (charOf V1 1) _a_ ))
;(assert (= (charOf V1 2) _a_ ))
;(assert (= (charOf V1 3) _a_ ))
;(assert (= (charOf V1 4) _b_ ))
;(assert (= (length V1) 5))

;this V1 should not satisfy, not enough a's
;(declare-fun V1 () String)
;(assert (= (charOf V1 0) _a_ ))
;(assert (= (charOf V1 1) _a_ ))
;(assert (= (charOf V1 2) _b_ ))
;(assert (= (charOf V1 3) _a_ ))
;(assert (= (length V1) 2))

;this V1 should satisfy: 3 a's, 1 b
;(declare-fun V1 () String)
;(assert (= (charOf V1 0) _a_ ))
;(assert (= (charOf V1 1) _a_ ))
;(assert (= (charOf V1 2) _a_ ))
;(assert (= (charOf V1 3) _b_ ))
;(assert (= (length V1) 4))


;this V1 should not satisfy - 5 is too many a's
(declare-fun V1 () String)
(assert (= (charOf V1 0) _a_ ))
(assert (= (charOf V1 1) _a_ ))
(assert (= (charOf V1 2) _a_ ))
(assert (= (charOf V1 3) _a_ ))
(assert (= (charOf V1 4) _a_ ))
(assert (= (charOf V1 5) _b_ ))
(assert (= (length V1) 6))

;force all unmapped indices to _ERROR_ to
;avoid false positive models
(assert 
	(forall ((badIndex Int))
		(=>
			(or 
				(< badIndex 0) 
				(>= badIndex (length V1))
			)
			(= (charOf V1 badIndex) _ERROR_) 
		)
	)	
)


; this format should work for: {1}, {3,} and {3,4}
(declare-const minRepetitions Int)
(declare-const maxRepetitions Int)

(assert (= minRepetitions 0))
;(assert (= maxRepetitions 4))

;switching off singleLineMode == exclude newlines
(declare-const singleLineMode Bool)
(assert (= singleLineMode false))

;in english, this means:
;for all the indices starting at mIndex, but less than
;the min repetitions or the max repetitions (so any 
;run size in that range should work), the characters at
;those indices must match the dotCharClass with the
;given option.  
(define-fun patternAt ((string0 String) (mIndex Int)) Bool
	(forall ((runIndexVar Int))
		(=>
			(and
				(>= runIndexVar mIndex)
				(or
					(< runIndexVar (+ mIndex minRepetitions)) 
					(< runIndexVar (+ mIndex maxRepetitions)) 
				)
			)
			(dotCharClassAt string0 runIndexVar (not singleLineMode))
		)
	)
)
;TODO - the above should be generalized to
;be a multiple of a match-group length, which is now 
;fixed to 1




(declare-const xIndex Int)
(assert (patternAt V1 xIndex) )
(check-sat)
(get-value (xIndex))
(exit)


