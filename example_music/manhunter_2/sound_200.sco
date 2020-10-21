;; AGI Sound Resource 200 (Volume 3 Offset 360227)


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
i11	0	3	0	1008
i11	3	3	0	928
i11	6	3	0	832
i11	9	3	0	752
i11	12	3	0	672
i11	15	3	0	576
i11	18	3	0	592
i11	21	3	0	544
i11	24	3	0	512
i11	27	3	0	528
i11	30	3	0	496
i11	33	3	0	544
i11	36	3	0	496
i11	39	3	0	512
i11	42	3	0	496
i11	45	3	0	512
i11	48	3	0	528
i11	51	3	0	544
i11	54	3	0	512
i11	57	3	0	528
i11	60	3	0	544
i11	63	3	0	576
i11	66	3	0	560
i11	69	3	0	528
i11	72	3	0	544
i11	75	3	0	528
i11	78	3	0	544
i11	81	3	0	576
i11	84	3	0	592
i11	87	3	0	560
i11	90	3	0	592
i11	93	3	0	640
i11	96	3	0	624
i11	99	3	0	592
i11	102	3	0	624
i11	105	3	0	640
i11	108	3	0	608
i11	111	3	0	624
i11	114	3	0	656
i11	117	3	0	672
i11	120	3	0	640
i11	123	3	0	656
i11	126	3	0	640
i11	129	3	0	656
i11	132	9	0	672
i11	141	6	0	688
i11	147	3	0	720
i11	150	3	0	752
i11	153	3	0	800
i11	156	3	0	880
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
i99	0	219	0.9	1.0	1.0
