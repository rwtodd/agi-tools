;; AGI Sound Resource 35 (Volume 1 Offset 117984)


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
i11	60	61	0	55
i11	121	60	0	58
i11	181	60	0	82
i11	241	117	0	78
i11	361	60	0	61
i11	421	30	0	65
i11	451	30	0	69
i11	481	30	0	104
i11	511	30	0	98
i11	541	30	0	69
i11	571	30	0	73
i11	602	180	0	92
;; End of instrument 11

;; Start of voice 2 (instrument 12)
;;	start	dur	level	freq
i12	60	30	2	220
i12	90	30	2	208
i12	120	30	2	220
i12	150	30	2	208
i12	180	30	2	220
i12	210	30	2	208
i12	240	30	2	220
i12	270	30	2	208
i12	300	30	2	220
i12	330	30	2	208
i12	360	30	2	220
i12	390	30	2	208
i12	420	30	2	220
i12	451	30	2	208
i12	481	30	2	220
i12	511	30	2	208
i12	541	30	2	220
i12	571	30	2	208
i12	601	30	2	220
i12	631	30	2	208
i12	661	30	2	220
i12	691	30	2	208
i12	721	30	2	220
i12	751	30	2	208
;; End of instrument 12

;; Start of voice 3 (instrument 13)
;;	start	dur	level	freq
i13	60	30	1	175
i13	90	30	1	165
i13	120	30	1	175
i13	150	30	1	165
i13	180	30	1	175
i13	210	30	1	165
i13	240	30	1	175
i13	270	30	1	165
i13	300	30	1	175
i13	330	30	1	165
i13	360	30	1	175
i13	391	30	1	165
i13	421	30	1	175
i13	451	30	1	165
i13	481	30	1	175
i13	511	30	1	165
i13	541	30	1	175
i13	571	30	1	165
i13	601	30	1	175
i13	631	30	1	165
i13	661	30	1	175
i13	691	30	1	165
i13	721	30	1	175
i13	751	30	1	165
;; End of instrument 13

;; Start of noise channel (instrument 21 an 31)
;;	start	dur	level	freq
;; End of noise channel

;; mixer
;;	start	dur	rev	lvl1	lvl2
i99	0	842	0.9	1.0	1.0
