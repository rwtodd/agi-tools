; This is '.', sound resource #12 of length 60.400002

; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 1 for the main voice (square wave)
; Instrument 2 for white noise
; Instrument 3 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second


; Set the reverb for 2 seconds longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	61.400	0.9	1.0	1.0


; ****  Voice 1
; 1	time	dur	db	freq	pan
i 1	0.400	4.30	-20	293.597839	0.50
i 1	+	4.20	-20	415.839325	0.50
i 1	+	5.50	-20	782.243225	0.50
i 1	14.500	7.40	-20	1242.897583	0.50
i 1	25.100	0.60	-20	1316.009155	0.50
i 1	26.000	0.60	-20	1316.009155	0.50
i 1	26.900	0.60	-20	1316.009155	0.50
i 1	27.800	0.60	-20	1316.009155	0.50
i 1	28.700	0.60	-20	1316.009155	0.50
i 1	29.900	0.70	-20	1242.897583	0.50
i 1	31.200	0.50	-20	1177.481934	0.50
i 1	32.900	3.10	-20	932.173157	0.50
i 1	38.800	0.30	-20	1316.009155	0.50
i 1	39.400	0.40	-20	1316.009155	0.50
i 1	40.100	0.50	-20	1316.009155	0.50
i 1	40.800	0.60	-20	1316.009155	0.50
i 1	42.100	0.60	-20	1242.897583	0.50
i 1	43.400	0.50	-20	1177.481934	0.50
i 1	45.100	7.40	-20	932.173157	0.50


; ****  Voice 2
; 1	time	dur	db	freq	pan
i 1	11.300	1.50	-29	164.743423	0.70
i 1	+	1.40	-29	174.509796	0.70
i 1	+	0.90	-29	164.743423	0.70
i 1	+	1.00	-29	174.509796	0.70
i 1	+	0.70	-29	164.743423	0.70
i 1	+	0.80	-29	174.509796	0.70
i 1	+	0.50	-29	164.743423	0.70
i 1	+	0.50	-29	174.509796	0.70
i 1	18.800	0.40	-29	164.743423	0.70
i 1	+	0.50	-29	174.509796	0.70
i 1	+	0.50	-29	164.743423	0.70
i 1	+	0.40	-29	174.509796	0.70
i 1	20.700	0.30	-29	164.743423	0.70
i 1	+	0.50	-29	174.509796	0.70
i 1	+	0.40	-29	164.743423	0.70
i 1	+	0.40	-29	174.509796	0.70
i 1	22.400	0.30	-29	164.743423	0.70
i 1	+	0.40	-29	174.509796	0.70
i 1	23.500	0.50	-29	174.509796	0.70
i 1	+	12.80	-29	164.743423	0.70
i 1	+	1.30	-29	155.578278	0.70
i 1	+	2.10	-29	146.798920	0.70
i 1	+	13.10	-29	116.521645	0.70


; ****  Voice 3
; 1	time	dur	db	freq	pan


; ****  Voice 4 (Noise)
;  	time	dur	db	freq