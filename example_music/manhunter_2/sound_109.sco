;; AGI Sound Resource 109 (Volume 2 Offset 196023)


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
i11	0	3	0	448
i11	3	3	0	560
i11	6	3	0	912
i11	9	3	0	992
i11	12	6	0	1008
i11	18	6	0	992
i11	24	6	0	976
i11	30	6	0	960
i11	36	3	0	976
i11	39	3	0	992
i11	42	3	0	976
i11	45	6	0	960
i11	51	6	0	976
i11	57	3	0	992
i11	60	3	0	944
i11	63	3	0	528
i11	66	3	0	832
i11	69	3	0	352
i11	72	3	0	1008
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
i99	0	135	0.9	1.0	1.0
