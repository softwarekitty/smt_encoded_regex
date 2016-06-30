;has all features besides lookahead/behinds: ^x([ch]ats?)+\1apple((mn+)+p|((gh+){2}|(jk+){3}w)+q)+.*\b((de+)+f(ij+)+)+$
(set-option :produce-unsat-cores true)
;focusing on nested or's portion:
;^((mn+)+p|((gh+)+|(jk+)+w)+q)+

;mnnpmnnnnmnmnmnpghhghjkkjkwghghjkwqmnnmnpjkjkwjkwqghhhghq
;   0           1                  2     3        4      5
;mnnp            ghhgh      ghgh    mnnmnp         ghhhghq
;    mnnnnmnmnmnp     jkkjkw    jkwq      jkjkwjkwq
;preprocessing yields highest # repeating leaves: leaf nPlus has 11
;MAX_REPETITIONS_POSSIBLE is now 11.

;correct model:
;^((mn+)+p|((gh+)+|(jk+)+w)+q)+
; ___________N0_K_____________+
;  __Ch0__
;          _______Ch1________
;           ______N1_Ar____+
;           _Ch2__ __Ch3___
;  _N2__+
;           _N3__+
;                  _N4__+
;patternBegin=0
;N0_K   = 6                       ArN

; below, D means 'Don't Care'
;Ch0_Ar = {1,1,0,1,0,0,D,D,D,D,D} Ar0
;Ch1_Ar = {0,0,1,0,1,1,D,D,D,D,D} Ar1

;N1_Ar  = {4,2,1,D,D,D,D,D,D,D,D} Ar2
;Ch2_Ar = {1,0,1,0,0,0,1,D,D,D,D} Ar3
;Ch3_Ar = {0,1,0,1,1,1,0,D,D,D,D} Ar4
;N2_Ar  = {1,4,2,D,D,D,D,D,D,D,D} Ar5
;N3_Ar  = {2,2,2,D,D,D,D,D,D,D,D} Ar6
;N4_Ar  = {2,1,2,1,D,D,D,D,D,D,D} Ar7

;nPlus_Ar={2,4,1,1,1,2,1,D,D,D,D} Ar8
;hPlus_Ar={2,1,1,1,3,1,D,D,D,D,D} Ar9
;kPlus_Ar={2,1,1,1,1,1,D,D,D,D,D} Ar10


;//////////////////////////LENGTH DEPENDENT PREAMBLE////////////////////////
(declare-const LENGTH Int)(assert (= LENGTH 11))
(declare-const ERROR Int)(assert (= ERROR 2147483647))
(define-fun iB ((value Int)) Bool (and (>= value 0) (<= value LENGTH)))

;constant declarations for Ar0
(declare-const Ar0_0 Int)(declare-const Ar0_1 Int)(declare-const Ar0_2 Int)(declare-const Ar0_3 Int)(declare-const Ar0_4 Int)(declare-const Ar0_5 Int)(declare-const Ar0_6 Int)(declare-const Ar0_7 Int)(declare-const Ar0_8 Int)(declare-const Ar0_9 Int)(declare-const Ar0_10 Int)
;isInBounds assertions for Ar0
(assert (and (iB Ar0_0)(iB Ar0_1)(iB Ar0_2)(iB Ar0_3)(iB Ar0_4)(iB Ar0_5)(iB Ar0_6)(iB Ar0_7)(iB Ar0_8)(iB Ar0_9)(iB Ar0_10)))
;select function for Ar0
(define-fun s_Ar0 ((i Int)) Int (ite (= i 0) Ar0_0 (ite (= i 1) Ar0_1 (ite (= i 2) Ar0_2 (ite (= i 3) Ar0_3 (ite (= i 4) Ar0_4 (ite (= i 5) Ar0_5 (ite (= i 6) Ar0_6 (ite (= i 7) Ar0_7 (ite (= i 8) Ar0_8 (ite (= i 9) Ar0_9 (ite (= i 10) Ar0_10 ERROR))))))))))))
;arraySum function for Ar0
(define-fun a_Ar0 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar0_0 (ite (= i 2)(+ Ar0_0 Ar0_1)(ite (= i 3)(+ Ar0_0 Ar0_1 Ar0_2)(ite (= i 4)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3)(ite (= i 5)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4)(ite (= i 6)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4 Ar0_5)(ite (= i 7)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4 Ar0_5 Ar0_6)(ite (= i 8)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4 Ar0_5 Ar0_6 Ar0_7)(ite (= i 9)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4 Ar0_5 Ar0_6 Ar0_7 Ar0_8)(ite (= i 10)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4 Ar0_5 Ar0_6 Ar0_7 Ar0_8 Ar0_9)(ite (= i 11)(+ Ar0_0 Ar0_1 Ar0_2 Ar0_3 Ar0_4 Ar0_5 Ar0_6 Ar0_7 Ar0_8 Ar0_9 Ar0_10) ERROR)))))))))))))


;constant declarations for Ar1
(declare-const Ar1_0 Int)(declare-const Ar1_1 Int)(declare-const Ar1_2 Int)(declare-const Ar1_3 Int)(declare-const Ar1_4 Int)(declare-const Ar1_5 Int)(declare-const Ar1_6 Int)(declare-const Ar1_7 Int)(declare-const Ar1_8 Int)(declare-const Ar1_9 Int)(declare-const Ar1_10 Int)
;isInBounds assertions for Ar1
(assert (and (iB Ar1_0)(iB Ar1_1)(iB Ar1_2)(iB Ar1_3)(iB Ar1_4)(iB Ar1_5)(iB Ar1_6)(iB Ar1_7)(iB Ar1_8)(iB Ar1_9)(iB Ar1_10)))
;select function for Ar1
(define-fun s_Ar1 ((i Int)) Int (ite (= i 0) Ar1_0 (ite (= i 1) Ar1_1 (ite (= i 2) Ar1_2 (ite (= i 3) Ar1_3 (ite (= i 4) Ar1_4 (ite (= i 5) Ar1_5 (ite (= i 6) Ar1_6 (ite (= i 7) Ar1_7 (ite (= i 8) Ar1_8 (ite (= i 9) Ar1_9 (ite (= i 10) Ar1_10 ERROR))))))))))))
;arraySum function for Ar1
(define-fun a_Ar1 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar1_0 (ite (= i 2)(+ Ar1_0 Ar1_1)(ite (= i 3)(+ Ar1_0 Ar1_1 Ar1_2)(ite (= i 4)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3)(ite (= i 5)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4)(ite (= i 6)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4 Ar1_5)(ite (= i 7)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4 Ar1_5 Ar1_6)(ite (= i 8)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4 Ar1_5 Ar1_6 Ar1_7)(ite (= i 9)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4 Ar1_5 Ar1_6 Ar1_7 Ar1_8)(ite (= i 10)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4 Ar1_5 Ar1_6 Ar1_7 Ar1_8 Ar1_9)(ite (= i 11)(+ Ar1_0 Ar1_1 Ar1_2 Ar1_3 Ar1_4 Ar1_5 Ar1_6 Ar1_7 Ar1_8 Ar1_9 Ar1_10) ERROR)))))))))))))


;constant declarations for Ar2
(declare-const Ar2_0 Int)(declare-const Ar2_1 Int)(declare-const Ar2_2 Int)(declare-const Ar2_3 Int)(declare-const Ar2_4 Int)(declare-const Ar2_5 Int)(declare-const Ar2_6 Int)(declare-const Ar2_7 Int)(declare-const Ar2_8 Int)(declare-const Ar2_9 Int)(declare-const Ar2_10 Int)
;isInBounds assertions for Ar2
(assert (and (iB Ar2_0)(iB Ar2_1)(iB Ar2_2)(iB Ar2_3)(iB Ar2_4)(iB Ar2_5)(iB Ar2_6)(iB Ar2_7)(iB Ar2_8)(iB Ar2_9)(iB Ar2_10)))
;select function for Ar2
(define-fun s_Ar2 ((i Int)) Int (ite (= i 0) Ar2_0 (ite (= i 1) Ar2_1 (ite (= i 2) Ar2_2 (ite (= i 3) Ar2_3 (ite (= i 4) Ar2_4 (ite (= i 5) Ar2_5 (ite (= i 6) Ar2_6 (ite (= i 7) Ar2_7 (ite (= i 8) Ar2_8 (ite (= i 9) Ar2_9 (ite (= i 10) Ar2_10 ERROR))))))))))))
;arraySum function for Ar2
(define-fun a_Ar2 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar2_0 (ite (= i 2)(+ Ar2_0 Ar2_1)(ite (= i 3)(+ Ar2_0 Ar2_1 Ar2_2)(ite (= i 4)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3)(ite (= i 5)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4)(ite (= i 6)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4 Ar2_5)(ite (= i 7)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4 Ar2_5 Ar2_6)(ite (= i 8)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4 Ar2_5 Ar2_6 Ar2_7)(ite (= i 9)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4 Ar2_5 Ar2_6 Ar2_7 Ar2_8)(ite (= i 10)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4 Ar2_5 Ar2_6 Ar2_7 Ar2_8 Ar2_9)(ite (= i 11)(+ Ar2_0 Ar2_1 Ar2_2 Ar2_3 Ar2_4 Ar2_5 Ar2_6 Ar2_7 Ar2_8 Ar2_9 Ar2_10) ERROR)))))))))))))


;constant declarations for Ar3
(declare-const Ar3_0 Int)(declare-const Ar3_1 Int)(declare-const Ar3_2 Int)(declare-const Ar3_3 Int)(declare-const Ar3_4 Int)(declare-const Ar3_5 Int)(declare-const Ar3_6 Int)(declare-const Ar3_7 Int)(declare-const Ar3_8 Int)(declare-const Ar3_9 Int)(declare-const Ar3_10 Int)
;isInBounds assertions for Ar3
(assert (and (iB Ar3_0)(iB Ar3_1)(iB Ar3_2)(iB Ar3_3)(iB Ar3_4)(iB Ar3_5)(iB Ar3_6)(iB Ar3_7)(iB Ar3_8)(iB Ar3_9)(iB Ar3_10)))
;select function for Ar3
(define-fun s_Ar3 ((i Int)) Int (ite (= i 0) Ar3_0 (ite (= i 1) Ar3_1 (ite (= i 2) Ar3_2 (ite (= i 3) Ar3_3 (ite (= i 4) Ar3_4 (ite (= i 5) Ar3_5 (ite (= i 6) Ar3_6 (ite (= i 7) Ar3_7 (ite (= i 8) Ar3_8 (ite (= i 9) Ar3_9 (ite (= i 10) Ar3_10 ERROR))))))))))))
;arraySum function for Ar3
(define-fun a_Ar3 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar3_0 (ite (= i 2)(+ Ar3_0 Ar3_1)(ite (= i 3)(+ Ar3_0 Ar3_1 Ar3_2)(ite (= i 4)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3)(ite (= i 5)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4)(ite (= i 6)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4 Ar3_5)(ite (= i 7)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4 Ar3_5 Ar3_6)(ite (= i 8)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4 Ar3_5 Ar3_6 Ar3_7)(ite (= i 9)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4 Ar3_5 Ar3_6 Ar3_7 Ar3_8)(ite (= i 10)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4 Ar3_5 Ar3_6 Ar3_7 Ar3_8 Ar3_9)(ite (= i 11)(+ Ar3_0 Ar3_1 Ar3_2 Ar3_3 Ar3_4 Ar3_5 Ar3_6 Ar3_7 Ar3_8 Ar3_9 Ar3_10) ERROR)))))))))))))


;constant declarations for Ar4
(declare-const Ar4_0 Int)(declare-const Ar4_1 Int)(declare-const Ar4_2 Int)(declare-const Ar4_3 Int)(declare-const Ar4_4 Int)(declare-const Ar4_5 Int)(declare-const Ar4_6 Int)(declare-const Ar4_7 Int)(declare-const Ar4_8 Int)(declare-const Ar4_9 Int)(declare-const Ar4_10 Int)
;isInBounds assertions for Ar4
(assert (and (iB Ar4_0)(iB Ar4_1)(iB Ar4_2)(iB Ar4_3)(iB Ar4_4)(iB Ar4_5)(iB Ar4_6)(iB Ar4_7)(iB Ar4_8)(iB Ar4_9)(iB Ar4_10)))
;select function for Ar4
(define-fun s_Ar4 ((i Int)) Int (ite (= i 0) Ar4_0 (ite (= i 1) Ar4_1 (ite (= i 2) Ar4_2 (ite (= i 3) Ar4_3 (ite (= i 4) Ar4_4 (ite (= i 5) Ar4_5 (ite (= i 6) Ar4_6 (ite (= i 7) Ar4_7 (ite (= i 8) Ar4_8 (ite (= i 9) Ar4_9 (ite (= i 10) Ar4_10 ERROR))))))))))))
;arraySum function for Ar4
(define-fun a_Ar4 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar4_0 (ite (= i 2)(+ Ar4_0 Ar4_1)(ite (= i 3)(+ Ar4_0 Ar4_1 Ar4_2)(ite (= i 4)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3)(ite (= i 5)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4)(ite (= i 6)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4 Ar4_5)(ite (= i 7)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4 Ar4_5 Ar4_6)(ite (= i 8)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4 Ar4_5 Ar4_6 Ar4_7)(ite (= i 9)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4 Ar4_5 Ar4_6 Ar4_7 Ar4_8)(ite (= i 10)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4 Ar4_5 Ar4_6 Ar4_7 Ar4_8 Ar4_9)(ite (= i 11)(+ Ar4_0 Ar4_1 Ar4_2 Ar4_3 Ar4_4 Ar4_5 Ar4_6 Ar4_7 Ar4_8 Ar4_9 Ar4_10) ERROR)))))))))))))


;constant declarations for Ar5
(declare-const Ar5_0 Int)(declare-const Ar5_1 Int)(declare-const Ar5_2 Int)(declare-const Ar5_3 Int)(declare-const Ar5_4 Int)(declare-const Ar5_5 Int)(declare-const Ar5_6 Int)(declare-const Ar5_7 Int)(declare-const Ar5_8 Int)(declare-const Ar5_9 Int)(declare-const Ar5_10 Int)
;isInBounds assertions for Ar5
(assert (and (iB Ar5_0)(iB Ar5_1)(iB Ar5_2)(iB Ar5_3)(iB Ar5_4)(iB Ar5_5)(iB Ar5_6)(iB Ar5_7)(iB Ar5_8)(iB Ar5_9)(iB Ar5_10)))
;select function for Ar5
(define-fun s_Ar5 ((i Int)) Int (ite (= i 0) Ar5_0 (ite (= i 1) Ar5_1 (ite (= i 2) Ar5_2 (ite (= i 3) Ar5_3 (ite (= i 4) Ar5_4 (ite (= i 5) Ar5_5 (ite (= i 6) Ar5_6 (ite (= i 7) Ar5_7 (ite (= i 8) Ar5_8 (ite (= i 9) Ar5_9 (ite (= i 10) Ar5_10 ERROR))))))))))))
;arraySum function for Ar5
(define-fun a_Ar5 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar5_0 (ite (= i 2)(+ Ar5_0 Ar5_1)(ite (= i 3)(+ Ar5_0 Ar5_1 Ar5_2)(ite (= i 4)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3)(ite (= i 5)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4)(ite (= i 6)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4 Ar5_5)(ite (= i 7)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4 Ar5_5 Ar5_6)(ite (= i 8)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4 Ar5_5 Ar5_6 Ar5_7)(ite (= i 9)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4 Ar5_5 Ar5_6 Ar5_7 Ar5_8)(ite (= i 10)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4 Ar5_5 Ar5_6 Ar5_7 Ar5_8 Ar5_9)(ite (= i 11)(+ Ar5_0 Ar5_1 Ar5_2 Ar5_3 Ar5_4 Ar5_5 Ar5_6 Ar5_7 Ar5_8 Ar5_9 Ar5_10) ERROR)))))))))))))


;constant declarations for Ar6
(declare-const Ar6_0 Int)(declare-const Ar6_1 Int)(declare-const Ar6_2 Int)(declare-const Ar6_3 Int)(declare-const Ar6_4 Int)(declare-const Ar6_5 Int)(declare-const Ar6_6 Int)(declare-const Ar6_7 Int)(declare-const Ar6_8 Int)(declare-const Ar6_9 Int)(declare-const Ar6_10 Int)
;isInBounds assertions for Ar6
(assert (and (iB Ar6_0)(iB Ar6_1)(iB Ar6_2)(iB Ar6_3)(iB Ar6_4)(iB Ar6_5)(iB Ar6_6)(iB Ar6_7)(iB Ar6_8)(iB Ar6_9)(iB Ar6_10)))
;select function for Ar6
(define-fun s_Ar6 ((i Int)) Int (ite (= i 0) Ar6_0 (ite (= i 1) Ar6_1 (ite (= i 2) Ar6_2 (ite (= i 3) Ar6_3 (ite (= i 4) Ar6_4 (ite (= i 5) Ar6_5 (ite (= i 6) Ar6_6 (ite (= i 7) Ar6_7 (ite (= i 8) Ar6_8 (ite (= i 9) Ar6_9 (ite (= i 10) Ar6_10 ERROR))))))))))))
;arraySum function for Ar6
(define-fun a_Ar6 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar6_0 (ite (= i 2)(+ Ar6_0 Ar6_1)(ite (= i 3)(+ Ar6_0 Ar6_1 Ar6_2)(ite (= i 4)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3)(ite (= i 5)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4)(ite (= i 6)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4 Ar6_5)(ite (= i 7)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4 Ar6_5 Ar6_6)(ite (= i 8)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4 Ar6_5 Ar6_6 Ar6_7)(ite (= i 9)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4 Ar6_5 Ar6_6 Ar6_7 Ar6_8)(ite (= i 10)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4 Ar6_5 Ar6_6 Ar6_7 Ar6_8 Ar6_9)(ite (= i 11)(+ Ar6_0 Ar6_1 Ar6_2 Ar6_3 Ar6_4 Ar6_5 Ar6_6 Ar6_7 Ar6_8 Ar6_9 Ar6_10) ERROR)))))))))))))


;constant declarations for Ar7
(declare-const Ar7_0 Int)(declare-const Ar7_1 Int)(declare-const Ar7_2 Int)(declare-const Ar7_3 Int)(declare-const Ar7_4 Int)(declare-const Ar7_5 Int)(declare-const Ar7_6 Int)(declare-const Ar7_7 Int)(declare-const Ar7_8 Int)(declare-const Ar7_9 Int)(declare-const Ar7_10 Int)
;isInBounds assertions for Ar7
(assert (and (iB Ar7_0)(iB Ar7_1)(iB Ar7_2)(iB Ar7_3)(iB Ar7_4)(iB Ar7_5)(iB Ar7_6)(iB Ar7_7)(iB Ar7_8)(iB Ar7_9)(iB Ar7_10)))
;select function for Ar7
(define-fun s_Ar7 ((i Int)) Int (ite (= i 0) Ar7_0 (ite (= i 1) Ar7_1 (ite (= i 2) Ar7_2 (ite (= i 3) Ar7_3 (ite (= i 4) Ar7_4 (ite (= i 5) Ar7_5 (ite (= i 6) Ar7_6 (ite (= i 7) Ar7_7 (ite (= i 8) Ar7_8 (ite (= i 9) Ar7_9 (ite (= i 10) Ar7_10 ERROR))))))))))))
;arraySum function for Ar7
(define-fun a_Ar7 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar7_0 (ite (= i 2)(+ Ar7_0 Ar7_1)(ite (= i 3)(+ Ar7_0 Ar7_1 Ar7_2)(ite (= i 4)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3)(ite (= i 5)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4)(ite (= i 6)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4 Ar7_5)(ite (= i 7)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4 Ar7_5 Ar7_6)(ite (= i 8)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4 Ar7_5 Ar7_6 Ar7_7)(ite (= i 9)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4 Ar7_5 Ar7_6 Ar7_7 Ar7_8)(ite (= i 10)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4 Ar7_5 Ar7_6 Ar7_7 Ar7_8 Ar7_9)(ite (= i 11)(+ Ar7_0 Ar7_1 Ar7_2 Ar7_3 Ar7_4 Ar7_5 Ar7_6 Ar7_7 Ar7_8 Ar7_9 Ar7_10) ERROR)))))))))))))


;constant declarations for Ar8
(declare-const Ar8_0 Int)(declare-const Ar8_1 Int)(declare-const Ar8_2 Int)(declare-const Ar8_3 Int)(declare-const Ar8_4 Int)(declare-const Ar8_5 Int)(declare-const Ar8_6 Int)(declare-const Ar8_7 Int)(declare-const Ar8_8 Int)(declare-const Ar8_9 Int)(declare-const Ar8_10 Int)
;isInBounds assertions for Ar8
(assert (and (iB Ar8_0)(iB Ar8_1)(iB Ar8_2)(iB Ar8_3)(iB Ar8_4)(iB Ar8_5)(iB Ar8_6)(iB Ar8_7)(iB Ar8_8)(iB Ar8_9)(iB Ar8_10)))
;select function for Ar8
(define-fun s_Ar8 ((i Int)) Int (ite (= i 0) Ar8_0 (ite (= i 1) Ar8_1 (ite (= i 2) Ar8_2 (ite (= i 3) Ar8_3 (ite (= i 4) Ar8_4 (ite (= i 5) Ar8_5 (ite (= i 6) Ar8_6 (ite (= i 7) Ar8_7 (ite (= i 8) Ar8_8 (ite (= i 9) Ar8_9 (ite (= i 10) Ar8_10 ERROR))))))))))))
;arraySum function for Ar8
(define-fun a_Ar8 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar8_0 (ite (= i 2)(+ Ar8_0 Ar8_1)(ite (= i 3)(+ Ar8_0 Ar8_1 Ar8_2)(ite (= i 4)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3)(ite (= i 5)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4)(ite (= i 6)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4 Ar8_5)(ite (= i 7)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4 Ar8_5 Ar8_6)(ite (= i 8)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4 Ar8_5 Ar8_6 Ar8_7)(ite (= i 9)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4 Ar8_5 Ar8_6 Ar8_7 Ar8_8)(ite (= i 10)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4 Ar8_5 Ar8_6 Ar8_7 Ar8_8 Ar8_9)(ite (= i 11)(+ Ar8_0 Ar8_1 Ar8_2 Ar8_3 Ar8_4 Ar8_5 Ar8_6 Ar8_7 Ar8_8 Ar8_9 Ar8_10) ERROR)))))))))))))


;constant declarations for Ar9
(declare-const Ar9_0 Int)(declare-const Ar9_1 Int)(declare-const Ar9_2 Int)(declare-const Ar9_3 Int)(declare-const Ar9_4 Int)(declare-const Ar9_5 Int)(declare-const Ar9_6 Int)(declare-const Ar9_7 Int)(declare-const Ar9_8 Int)(declare-const Ar9_9 Int)(declare-const Ar9_10 Int)
;isInBounds assertions for Ar9
(assert (and (iB Ar9_0)(iB Ar9_1)(iB Ar9_2)(iB Ar9_3)(iB Ar9_4)(iB Ar9_5)(iB Ar9_6)(iB Ar9_7)(iB Ar9_8)(iB Ar9_9)(iB Ar9_10)))
;select function for Ar9
(define-fun s_Ar9 ((i Int)) Int (ite (= i 0) Ar9_0 (ite (= i 1) Ar9_1 (ite (= i 2) Ar9_2 (ite (= i 3) Ar9_3 (ite (= i 4) Ar9_4 (ite (= i 5) Ar9_5 (ite (= i 6) Ar9_6 (ite (= i 7) Ar9_7 (ite (= i 8) Ar9_8 (ite (= i 9) Ar9_9 (ite (= i 10) Ar9_10 ERROR))))))))))))
;arraySum function for Ar9
(define-fun a_Ar9 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar9_0 (ite (= i 2)(+ Ar9_0 Ar9_1)(ite (= i 3)(+ Ar9_0 Ar9_1 Ar9_2)(ite (= i 4)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3)(ite (= i 5)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4)(ite (= i 6)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4 Ar9_5)(ite (= i 7)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4 Ar9_5 Ar9_6)(ite (= i 8)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4 Ar9_5 Ar9_6 Ar9_7)(ite (= i 9)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4 Ar9_5 Ar9_6 Ar9_7 Ar9_8)(ite (= i 10)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4 Ar9_5 Ar9_6 Ar9_7 Ar9_8 Ar9_9)(ite (= i 11)(+ Ar9_0 Ar9_1 Ar9_2 Ar9_3 Ar9_4 Ar9_5 Ar9_6 Ar9_7 Ar9_8 Ar9_9 Ar9_10) ERROR)))))))))))))



;constant declarations for Ar10
(declare-const Ar10_0 Int)(declare-const Ar10_1 Int)(declare-const Ar10_2 Int)(declare-const Ar10_3 Int)(declare-const Ar10_4 Int)(declare-const Ar10_5 Int)(declare-const Ar10_6 Int)(declare-const Ar10_7 Int)(declare-const Ar10_8 Int)(declare-const Ar10_9 Int)(declare-const Ar10_10 Int)
;isInBounds assertions for Ar10
(assert (and (iB Ar10_0)(iB Ar10_1)(iB Ar10_2)(iB Ar10_3)(iB Ar10_4)(iB Ar10_5)(iB Ar10_6)(iB Ar10_7)(iB Ar10_8)(iB Ar10_9)(iB Ar10_10)))
;select function for Ar10
(define-fun s_Ar10 ((i Int)) Int (ite (= i 0) Ar10_0 (ite (= i 1) Ar10_1 (ite (= i 2) Ar10_2 (ite (= i 3) Ar10_3 (ite (= i 4) Ar10_4 (ite (= i 5) Ar10_5 (ite (= i 6) Ar10_6 (ite (= i 7) Ar10_7 (ite (= i 8) Ar10_8 (ite (= i 9) Ar10_9 (ite (= i 10) Ar10_10 ERROR))))))))))))
;arraySum function for Ar10
(define-fun a_Ar10 ((i Int)) Int (ite (= i 0) 0 (ite (= i 1) Ar10_0 (ite (= i 2)(+ Ar10_0 Ar10_1)(ite (= i 3)(+ Ar10_0 Ar10_1 Ar10_2)(ite (= i 4)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3)(ite (= i 5)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4)(ite (= i 6)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4 Ar10_5)(ite (= i 7)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4 Ar10_5 Ar10_6)(ite (= i 8)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4 Ar10_5 Ar10_6 Ar10_7)(ite (= i 9)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4 Ar10_5 Ar10_6 Ar10_7 Ar10_8)(ite (= i 10)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4 Ar10_5 Ar10_6 Ar10_7 Ar10_8 Ar10_9)(ite (= i 11)(+ Ar10_0 Ar10_1 Ar10_2 Ar10_3 Ar10_4 Ar10_5 Ar10_6 Ar10_7 Ar10_8 Ar10_9 Ar10_10) ERROR)))))))))))))


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



;///////////////////Constrain Arrays//////////////////
;this section will follow the sequence ArN, Ar0, Ar1...

(declare-const ArN Int)
(assert (and (>= ArN 6) (< ArN LENGTH))) ; root capture group is a '+' style repetition

;bind the first level of choice arrays together
(assert 
	(forall ((choiceIndex Int))
		(=>
			(and
				(>= choiceIndex 0)
				(< choiceIndex ArN)
			)
			(or
				(and
					(= (s_Ar0 choiceIndex) 0)
					(= (s_Ar1 choiceIndex) 1)
				)
				(and
					(= (s_Ar0 choiceIndex) 1)
					(= (s_Ar1 choiceIndex) 0)
				)
			)
		)
	)
)

;apply repetition bounds to N1_Ar, which is a '+' style repetition, so bounds are [1,LENGTH]
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar1 ArN))
			)
			(and
				(>= (s_Ar2 relevantIndex) 1)
				(<= (s_Ar2 relevantIndex) LENGTH)
			)
		)
	)
)


;bind the second level of choice arrays together
(assert 
	(forall ((choiceIndex Int))
		(=>
			(and
				(>= choiceIndex 0)
				(< choiceIndex (a_Ar2 (a_Ar1 ArN)))
			)
			(or
				(and
					(= (s_Ar3 choiceIndex) 0)
					(= (s_Ar4 choiceIndex) 1)
				)
				(and
					(= (s_Ar3 choiceIndex) 1)
					(= (s_Ar4 choiceIndex) 0)
				)
			)
		)
	)
)

;apply repetition bounds to N2_Ar
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar0 ArN)) ;the sum of 1's in Ch_0, the or-parent of N2_Ar
			)
			(and
				(>= (s_Ar5 relevantIndex) 1)
				(<= (s_Ar5 relevantIndex) LENGTH)
			)
		)
	)
)

;apply repetition bounds to N3_Ar
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar3 (a_Ar2 (a_Ar1 ArN)))) ;the sum of 1's in Ch_2, the or-parent of N3_Ar
			)
			(and
				(>= (s_Ar6 relevantIndex) 1)
				(<= (s_Ar6 relevantIndex) LENGTH)
			)
		)
	)
)

;apply repetition bounds to N4_Ar
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar4 (a_Ar2 (a_Ar1 ArN)))) ;the sum of 1's in Ch_3, the or-parent of N4_Ar
			)
			(and
				(>= (s_Ar7 relevantIndex) 1)
				(<= (s_Ar7 relevantIndex) LENGTH)
			)
		)
	)
)

;apply repetition bounds to nPlus_Ar
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar5 (a_Ar0 ArN)))
			)
			(and
				(>= (s_Ar8 relevantIndex) 1)
				(<= (s_Ar8 relevantIndex) LENGTH)
			)
		)
	)
)

;apply repetition bounds to hPlus_Ar
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 ArN))))) 
			)
			(and
				(>= (s_Ar9 relevantIndex) 1)
				(<= (s_Ar9 relevantIndex) LENGTH)
			)
		)
	)
)

;apply repetition bounds to kPlus_Ar
(assert 
	(forall ((relevantIndex Int))
		(=>
			(and
				(>= relevantIndex 0)
				(< relevantIndex (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 ArN))))) 
			)
			(and
				(>= (s_Ar10 relevantIndex) 1)
				(<= (s_Ar10 relevantIndex) LENGTH)
			)
		)
	)
)

;///////////////////Define Leafy Variables//////////////////

;declare the input string variable
;the index mapping for inputString goes at the end so that many strings can be pushed and popped
(declare-fun inputString () String)

;declare the variable where the pattern begins.
;because of the ^ anchor, this must be 0
(declare-const patternBegin Int)
(assert (= patternBegin 0))

(declare-sort Leaf 0)

(declare-fun leaf_m () Leaf)
(declare-fun leaf_nPlus () Leaf)
(declare-fun leaf_p () Leaf)
(declare-fun leaf_g () Leaf)
(declare-fun leaf_hPlus () Leaf)
(declare-fun leaf_j () Leaf)
(declare-fun leaf_kPlus () Leaf)
(declare-fun leaf_w () Leaf)
(declare-fun leaf_q () Leaf)

;////////////////////////Specify satisfaction at the leaf level//////////////////

;///////////////leaf_m/////////////////
(define-fun leaf_m_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar0 i0)) ;leaf m only cares about sat if its parent vine was chosen at this level
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar5 (a_Ar0 i0)))
						)
						;now we have the indices in our hand that matter to leaf m (with the example: 00,10,11,12,13,30,31)
						(= _m_
							(charOf 
								inputString
								(+
									patternBegin
									(+ i1 (a_Ar5 (a_Ar0 i0)));leaf_m
									(a_Ar8 (+ i1 (a_Ar5 (a_Ar0 i0))));leaf_nPlus
									(a_Ar0 i0);leaf_p
									(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))));leaf_g
									(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_hPlus
									(a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))));leaf_j
									(a_Ar10 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_kPlus
									(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
									(a_Ar1 i0);leaf_q
								)
							)
						)
					)
				)
			)
		)
	)
)


;///////////////leaf_nPlus/////////////////
(define-fun leaf_nPlus_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar0 i0)) ;leaf nPlus only cares about sat if its parent vine was chosen at this level
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar5 (a_Ar0 i0)))
						)
						(forall ((iR Int))
							(=>
								(and
									(>= iR 0)
									(< iR (s_Ar8 (+ i1 (s_Ar5 (a_Ar0 i0)))))
								)
								(= _n_
									(charOf 
										inputString
										(+
											patternBegin
											(+ i1 1 (a_Ar5 (a_Ar0 i0)));leaf_m (add 1 for the 1 m right before me at my address)
											(a_Ar8 (+ i1 (a_Ar5 (a_Ar0 i0))));leaf_nPlus
											(a_Ar0 i0);leaf_p
											(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))));leaf_g
											(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_hPlus
											(a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))));leaf_j
											(a_Ar10 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_kPlus
											(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
											(a_Ar1 i0);leaf_q
											iR
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

;///////////////leaf_p/////////////////
(define-fun leaf_p_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar0 i0)) ;leaf p only cares about sat if its parent vine was chosen at this level
				(= _p_
					(charOf 
						inputString
						(+
							patternBegin
							(a_Ar5 (a_Ar0 (+ 1 i0)));leaf_m
							(a_Ar8 (a_Ar5 (a_Ar0 (+ 1 i0))));leaf_nPlus
							(a_Ar0 i0);leaf_p
							(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))));leaf_g
							(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_hPlus
							(a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))));leaf_j
							(a_Ar10 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_kPlus
							(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
							(a_Ar1 i0);leaf_q
						)
					)
				)
			)
		)
	)
)

;///////////////leaf_g/////////////////
(define-fun leaf_g_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar1 i0)) ; we must choose the right of the bottom OR
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar2 (a_Ar1 i0))) ;counting repetitions of N1
						)
						(=>
							(= 1 (s_Ar3 (+ i1 (a_Ar2 (a_Ar1 i0))))) ;we must choose the left of the top OR
							(forall ((i2 Int))
								(=>
									(and
										(>= i2 0)
										(< i2 (s_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))))); counting repetitions of (gh+)
									)
									(= _g_
										(charOf 
											inputString
											(+
												patternBegin
												(a_Ar5 (a_Ar0 i0));leaf_m
												(a_Ar8 (a_Ar5 (a_Ar0 i0)));leaf_nPlus
												(a_Ar0 i0);leaf_p
												(+ i2 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_g
												(a_Ar9 (+ i2 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))))));leaf_hPlus
												(a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))));leaf_j
												(a_Ar10 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_kPlus
												(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
												(a_Ar1 i0);leaf_q
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


;///////////////leaf_hPlus/////////////////
(define-fun leaf_hPlus_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar1 i0))
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar2 (a_Ar1 i0))) 
						)
						(=>
							(= 1 (s_Ar3 (+ i1 (a_Ar2 (a_Ar1 i0)))))
							(forall ((i2 Int))
								(=>
									(and
										(>= i2 0)
										(< i2 (s_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))))
									)
									(forall ((iR Int))
										(=>
											(and
												(>= iR 0)
												(< iR (s_Ar9 (+ i2 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))))))
											)
											(= _h_
												(charOf 
													inputString
													(+
														patternBegin
														(a_Ar5 (a_Ar0 i0));leaf_m
														(a_Ar8 (a_Ar5 (a_Ar0 i0)));leaf_nPlus
														(a_Ar0 i0);leaf_p
														(+ i2 1 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_g
														(a_Ar9 (+ i2 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))))));leaf_hPlus
														(a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))));leaf_j
														(a_Ar10 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_kPlus
														(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
														(a_Ar1 i0);leaf_q
														iR
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
)


;///////////////leaf_j/////////////////
(define-fun leaf_j_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar1 i0)) ; we must choose the right of the bottom OR
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar2 (a_Ar1 i0))) ;counting repetitions of N1
						)
						(=>
							(= 1 (s_Ar4 (+ i1 (a_Ar2 (a_Ar1 i0))))) ;we must choose the right of the top OR
							(forall ((i2 Int))
								(=>
									(and
										(>= i2 0)
										(< i2 (s_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))))); counting repetitions of (jk+)
									)
									(= _j_
										(charOf 
											inputString
											(+
												patternBegin
												(a_Ar5 (a_Ar0 i0));leaf_m
												(a_Ar8 (a_Ar5 (a_Ar0 i0)));leaf_nPlus
												(a_Ar0 i0);leaf_p
												(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))));leaf_g
												(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_hPlus
												(+ i2 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_j
												(a_Ar10 (+ i2 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))))));leaf_kPlus
												(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
												(a_Ar1 i0);leaf_q
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

;mnnpmnnnnmnmnmnpghhghjkkjkwghghjkwqmnnmnpjkjkwjkwqghhhghq
;   0           1                  2     3        4      5
;mnnp            ghhgh      ghgh    mnnmnp         ghhhghq
;    mnnnnmnmnmnp     jkkjkw    jkwq      jkjkwjkwq
;^((mn+)+p|((gh+)+|(jk+)+w)+q)+
; ___________N0_K_____________+
;  __Ch0__
;          _______Ch1________
;           ______N1_Ar____+
;           _Ch2__ __Ch3___
;  _N2__+
;           _N3__+
;                  _N4__+
;N0_K   = 6                       ArN

; below, D means 'Don't Care'
;Ch0_Ar = {1,1,0,1,0,0,D,D,D,D,D} Ar0
;Ch1_Ar = {0,0,1,0,1,1,D,D,D,D,D} Ar1

;N1_Ar  = {4,2,1,D,D,D,D,D,D,D,D} Ar2
;Ch2_Ar = {1,0,1,0,0,0,1,D,D,D,D} Ar3
;Ch3_Ar = {0,1,0,1,1,1,0,D,D,D,D} Ar4
;N2_Ar  = {1,4,2,D,D,D,D,D,D,D,D} Ar5
;N3_Ar  = {2,2,2,D,D,D,D,D,D,D,D} Ar6
;N4_Ar  = {2,1,2,1,D,D,D,D,D,D,D} Ar7

;nPlus_Ar={2,4,1,1,1,2,1,D,D,D,D} Ar8
;hPlus_Ar={2,1,1,1,3,1,D,D,D,D,D} Ar9
;kPlus_Ar={2,1,1,1,1,1,D,D,D,D,D} Ar10


;///////////////leaf_kPlus/////////////////
(define-fun leaf_kPlus_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar1 i0))
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar2 (a_Ar1 i0))) 
						)
						(=>
							(= 1 (s_Ar4 (+ i1 (a_Ar2 (a_Ar1 i0)))))
							(forall ((i2 Int))
								(=>
									(and
										(>= i2 0)
										(< i2 (s_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))))
									)
									(forall ((iR Int))
										(=>
											(and
												(>= iR 0)
												(< iR (s_Ar10 (+ i2 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))))))
											)
											(= _k_
												(charOf 
													inputString
													(+
														patternBegin
														(a_Ar5 (a_Ar0 i0));leaf_m
														(a_Ar8 (a_Ar5 (a_Ar0 i0)));leaf_nPlus
														(a_Ar0 i0);leaf_p
														(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))));leaf_g
														(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_hPlus
														(+ i2 1 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_j
														(a_Ar10 (+ i2 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 i0))))));leaf_kPlus
														(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
														(a_Ar1 i0);leaf_q
														iR
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
)


;///////////////leaf_w/////////////////
(define-fun leaf_w_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar1 i0)) ; we must choose the right of the bottom OR
				(forall ((i1 Int))
					(=>
						(and
							(>= i1 0)
							(< i1 (s_Ar2 (a_Ar1 i0))) ;counting repetitions of N1
						)
						(=>
							(= 1 (s_Ar4 (+ i1 (a_Ar2 (a_Ar1 i0))))) ;we must choose the right of the top OR
							(= _w_
								(charOf 
									inputString
									(+
										patternBegin
										(a_Ar5 (a_Ar0 i0));leaf_m
										(a_Ar8 (a_Ar5 (a_Ar0 i0)));leaf_nPlus
										(a_Ar0 i0);leaf_p
										(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0))));leaf_g
										(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 i0)))));leaf_hPlus
										(a_Ar7 (+ 1 (a_Ar4 (a_Ar2 (a_Ar1 i0)))));leaf_j
										(a_Ar10 (a_Ar7 (+ 1 (a_Ar4 (a_Ar2 (a_Ar1 i0))))));leaf_kPlus
										(a_Ar4 (a_Ar2 (a_Ar1 i0)));leaf_w
										(a_Ar1 i0);leaf_q
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


;///////////////leaf_q/////////////////
(define-fun leaf_q_Sat () Bool
	(forall ((i0 Int))
		(=>
			(and
				(>= i0 0)
				(< i0 ArN)
			)
			(=>
				(= 1 (s_Ar1 i0)) ;leaf p only cares about sat if its parent vine was chosen at this level
				(= _q_
					(charOf 
						inputString
						(+
							patternBegin
							(a_Ar5 (a_Ar0 i0));leaf_m
							(a_Ar8 (a_Ar5 (a_Ar0 i0)));leaf_nPlus
							(a_Ar0 i0);leaf_p
							(a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 (+ 1 i0)))));leaf_g
							(a_Ar9 (a_Ar6 (a_Ar3 (a_Ar2 (a_Ar1 (+ 1 i0))))));leaf_hPlus
							(a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 (+ 1 i0)))));leaf_j
							(a_Ar10 (a_Ar7 (a_Ar4 (a_Ar2 (a_Ar1 (+ 1 i0))))));leaf_kPlus
							(a_Ar4 (a_Ar2 (a_Ar1 (+ 1 i0))));leaf_w
							(a_Ar1 i0);leaf_q
						)
					)
				)
			)
		)
	)
)




;//////////////////////////Solve///////////////////////////////


;the is the top-level assertion: all the leaves have to be satisfied
(assert 
	(and
		leaf_m_Sat
		leaf_nPlus_Sat
		leaf_p_Sat
		leaf_g_Sat
		leaf_hPlus_Sat
		leaf_j_Sat
		leaf_kPlus_Sat
		leaf_w_Sat
		leaf_q_Sat
	)
)
(push)


;this inputString should satisfy
(assert (= (charOf inputString 0) _m_ ))
(assert (= (charOf inputString 1) _n_ ))
(assert (= (charOf inputString 2) _n_ ))
(assert (= (charOf inputString 3) _p_ ))
(assert (= (charOf inputString 4) _m_ ))
(assert (= (charOf inputString 5) _n_ ))
(assert (= (charOf inputString 6) _n_ ))
(assert (= (charOf inputString 7) _n_ ))
(assert (= (charOf inputString 8) _n_ ))
(assert (= (charOf inputString 9) _m_ ))
(assert (= (charOf inputString 10) _n_ ))
(assert (= (charOf inputString 11) _m_ ))
(assert (= (charOf inputString 12) _n_ ))
(assert (= (charOf inputString 13) _m_ ))
(assert (= (charOf inputString 14) _n_ ))
(assert (= (charOf inputString 15) _p_ ))
(assert (= (charOf inputString 16) _g_ ))
(assert (= (charOf inputString 17) _h_ ))
(assert (= (charOf inputString 18) _h_ ))
(assert (= (charOf inputString 19) _g_ ))
(assert (= (charOf inputString 20) _h_ ))
(assert (= (charOf inputString 21) _j_ ))
(assert (= (charOf inputString 22) _k_ ))
(assert (= (charOf inputString 23) _k_ ))
(assert (= (charOf inputString 24) _j_ ))
(assert (= (charOf inputString 25) _k_ ))
(assert (= (charOf inputString 26) _w_ ))
(assert (= (charOf inputString 27) _g_ ))
(assert (= (charOf inputString 28) _h_ ))
(assert (= (charOf inputString 29) _g_ ))
(assert (= (charOf inputString 30) _h_ ))
(assert (= (charOf inputString 31) _j_ ))
(assert (= (charOf inputString 32) _k_ ))
(assert (= (charOf inputString 33) _w_ ))
(assert (= (charOf inputString 34) _q_ ))
(assert (= (charOf inputString 35) _m_ ))
(assert (= (charOf inputString 36) _n_ ))
(assert (= (charOf inputString 37) _n_ ))
(assert (= (charOf inputString 38) _m_ ))
(assert (= (charOf inputString 39) _n_ ))
(assert (= (charOf inputString 40) _p_ ))
(assert (= (charOf inputString 41) _j_ ))
(assert (= (charOf inputString 42) _k_ ))
(assert (= (charOf inputString 43) _j_ ))
(assert (= (charOf inputString 44) _k_ ))
(assert (= (charOf inputString 45) _w_ ))
(assert (= (charOf inputString 46) _j_ ))
(assert (= (charOf inputString 47) _k_ ))
(assert (= (charOf inputString 48) _w_ ))
(assert (= (charOf inputString 49) _q_ ))
(assert (= (charOf inputString 50) _g_ ))
(assert (= (charOf inputString 51) _h_ ))
(assert (= (charOf inputString 52) _h_ ))
(assert (= (charOf inputString 53) _h_ ))
(assert (= (charOf inputString 54) _g_ ))
(assert (= (charOf inputString 55) _h_ ))
(assert (= (charOf inputString 56) _q_ ))
(assert (= (length inputString) 57))

(check-sat)
(get-unsat-core)
(get-value (patternBegin))
(get-value (ArN))

(get-value (Ar0_0))
(get-value (Ar0_1))
(get-value (Ar0_2))
(get-value (Ar0_3))
(get-value (Ar0_4))
(get-value (Ar0_5))

(get-value (Ar1_0))
(get-value (Ar1_1))
(get-value (Ar1_2))
(get-value (Ar1_3))
(get-value (Ar1_4))
(get-value (Ar1_5))

(get-value (Ar2_0))
(get-value (Ar2_1))
(get-value (Ar2_2))

(get-value (Ar3_0))
(get-value (Ar3_1))
(get-value (Ar3_2))
(get-value (Ar3_3))
(get-value (Ar3_4))
(get-value (Ar3_5))
(get-value (Ar3_6))

(get-value (Ar4_0))
(get-value (Ar4_1))
(get-value (Ar4_2))
(get-value (Ar4_3))
(get-value (Ar4_4))
(get-value (Ar4_5))
(get-value (Ar4_6))

(get-value (Ar5_0))
(get-value (Ar5_1))
(get-value (Ar5_2))

(get-value (Ar6_0))
(get-value (Ar6_1))
(get-value (Ar6_2))

(get-value (Ar7_0))
(get-value (Ar7_1))
(get-value (Ar7_2))
(get-value (Ar7_3))

(get-value (Ar8_0))
(get-value (Ar8_1))
(get-value (Ar8_2))
(get-value (Ar8_3))
(get-value (Ar8_4))
(get-value (Ar8_5))
(get-value (Ar8_6))

(get-value (Ar9_0))
(get-value (Ar9_1))
(get-value (Ar9_2))
(get-value (Ar9_3))
(get-value (Ar9_4))
(get-value (Ar9_5))

(get-value (Ar10_0))
(get-value (Ar10_1))
(get-value (Ar10_2))
(get-value (Ar10_3))
(get-value (Ar10_4))
(get-value (Ar10_5))


;Ch0_Ar = {1,1,0,1,0,0,D,D,D,D,D} Ar0
;Ch1_Ar = {0,0,1,0,1,1,D,D,D,D,D} Ar1

;N1_Ar  = {4,2,1,D,D,D,D,D,D,D,D} Ar2
;Ch2_Ar = {1,0,1,0,0,0,1,D,D,D,D} Ar3
;Ch3_Ar = {0,1,0,1,1,1,0,D,D,D,D} Ar4
;N2_Ar  = {1,4,2,D,D,D,D,D,D,D,D} Ar5
;N3_Ar  = {2,2,2,D,D,D,D,D,D,D,D} Ar6
;N4_Ar  = {2,1,2,1,D,D,D,D,D,D,D} Ar7

;nPlus_Ar={2,4,1,1,1,2,1,D,D,D,D} Ar8
;hPlus_Ar={2,1,1,1,3,1,D,D,D,D,D} Ar9
;kPlus_Ar={2,1,1,1,1,1,D,D,D,D,D} Ar10

(exit)


