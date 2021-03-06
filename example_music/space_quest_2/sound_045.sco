;; AGI Sound Resource 45 (Volume 2 Offset 277548)


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
i11	0	6	0	32
i11	9	6	0	32
i11	18	6	0	32
i11	27	6	0	32
i11	36	6	0	32
;; End of instrument 11

;; Start of voice 2 (instrument 12)
;;	start	dur	level	freq
i12	0	6	0	48
i12	9	6	0	48
i12	18	6	0	48
i12	27	6	0	48
i12	36	6	0	48
;; End of instrument 12

;; Start of voice 3 (instrument 13)
;;	start	dur	level	freq
;; End of instrument 13

;; Start of noise channel (instrument 21 an 31)
;;	start	dur	level	freq
;; End of noise channel

;; mixer
;;	start	dur	rev	lvl1	lvl2
i99	0	102	0.9	1.0	1.0
