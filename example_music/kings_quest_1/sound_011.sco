;; AGI Sound Resource 11 (Volume 0 Offset 46151)


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
;; End of instrument 11

;; Start of voice 2 (instrument 12)
;;	start	dur	level	freq
;; End of instrument 12

;; Start of voice 3 (instrument 13)
;;	start	dur	level	freq
;; End of instrument 13

;; Start of noise channel (instrument 21 an 31)
;;	start	dur	level	freq
i31	0	3	6	0
i31	6	3	4	0
i31	12	3	2	0
i31	18	3	0	0
i31	24	3	2	0
i31	30	3	4	0
i31	36	3	6	0
;; End of noise channel

;; mixer
;;	start	dur	rev	lvl1	lvl2
i99	0	99	0.9	1.0	1.0
