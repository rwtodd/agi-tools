;; AGI Sound Resource 163 (Volume 3 Offset 38354)


t 0 3600 ;; AGI runs in 1/60th second ticks

; set up the instruments
i 1  0  0  1   0 4   ;; 4 Rhodes piano
i 1  0  0  2   0 4   ;; 4 Rhodes piano
i 1  0  0  3   0 4   ;; 4 Rhodes piano

; set up the panning
i 2  0  0  1 0.5     ;; middle
i 2  0  0  2 0.7     ;; right
i 2  0  0  3 0.3     ;; left


;; Start of voice 1 (instrument 11)
;;	start	dur	level	freq
i11	0	3	0	496
i11	3	3	0	464
i11	6	3	0	480
i11	9	3	0	512
i11	36	3	0	544
i11	39	3	0	512
i11	42	3	0	544
i11	45	3	0	576
i11	72	3	0	512
i11	75	3	0	480
i11	78	3	0	512
i11	81	3	0	544
i11	108	3	0	544
i11	111	3	0	512
i11	114	3	0	544
i11	117	3	0	576
;; End of instrument 11

;; Start of voice 2 (instrument 12)
;;	start	dur	level	freq
;; End of instrument 12

;; Start of voice 3 (instrument 13)
;;	start	dur	level	freq
;; End of instrument 13

;; Start of noise channel (instrument 21 an 31)
;;	start	dur	level	freq
;; End of noise channel

;; mixer
;;	start	dur	rev	lvl1	lvl2
i99	0	180	0.9	1.0	1.0
