; This is '.', sound resource #62 of length 53.400002

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
i 99	0	53.400	0.9	1.0	1.0


; ****  Voice 1
; 1	time	dur	db	freq	pan
i 1	0.100	0.70	-20	782.243225	0.50
i 1	+	0.70	-20	740.799866	0.50
i 1	1.600	0.70	-20	782.243225	0.50
i 1	+	0.90	-20	880.793579	0.50
i 1	+	0.70	-20	932.173157	0.50
i 1	6.600	0.80	-20	782.243225	0.50
i 1	+	0.70	-20	740.799866	0.50
i 1	8.300	0.60	-20	782.243225	0.50
i 1	9.000	0.70	-20	880.793579	0.50
i 1	9.900	0.50	-20	932.173157	0.50
i 1	13.200	0.80	-20	782.243225	0.50
i 1	+	0.70	-20	740.799866	0.50
i 1	14.900	0.70	-20	782.243225	0.50
i 1	+	0.70	-20	880.793579	0.50
i 1	16.500	0.80	-20	932.173157	0.50
i 1	+	0.80	-20	880.793579	0.50
i 1	+	0.70	-20	932.173157	0.50
i 1	18.900	0.90	-20	1045.427856	0.50
i 1	+	0.70	-20	1177.481934	0.50
i 1	20.600	0.60	-20	1045.427856	0.50
i 1	21.500	0.80	-20	932.173157	0.50
i 1	+	0.80	-20	880.793579	0.50
i 1	23.200	0.80	-20	932.173157	0.50
i 1	24.900	0.60	-20	880.793579	0.50
i 1	26.700	0.70	-20	782.243225	0.50
i 1	+	0.60	-20	699.129883	0.50
i 1	28.200	0.60	-20	782.243225	0.50
i 1	28.900	1.00	-20	880.793579	0.50
i 1	+	0.60	-20	932.173157	0.50
i 1	33.500	0.70	-20	782.243225	0.50
i 1	+	0.60	-20	699.129883	0.50
i 1	35.100	0.60	-20	782.243225	0.50
i 1	35.800	0.70	-20	880.793579	0.50
i 1	36.600	0.70	-20	932.173157	0.50
i 1	40.200	0.60	-20	782.243225	0.50
i 1	40.900	0.80	-20	699.129883	0.50
i 1	41.800	0.70	-20	621.448792	0.50
i 1	42.600	0.70	-20	588.740967	0.50
i 1	+	0.70	-20	621.448792	0.50
i 1	44.200	0.80	-20	699.129883	0.50
i 1	45.100	0.70	-20	782.243225	0.50
i 1	+	0.80	-20	880.793579	0.50
i 1	+	0.90	-20	932.173157	0.50
i 1	+	0.70	-20	880.793579	0.50
i 1	+	0.70	-20	932.173157	0.50
i 1	49.100	0.80	-20	1045.427856	0.50
i 1	50.000	0.70	-20	1177.481934	0.50
i 1	50.800	0.70	-20	1045.427856	0.50
i 1	51.700	0.70	-20	932.173157	0.50
i 1	52.500	0.50	-20	880.793579	0.50


; ****  Voice 2
; 1	time	dur	db	freq	pan
i 1	0.000	0.60	-23	392.493958	0.70
i 1	3.200	0.50	-23	293.597839	0.70
i 1	4.900	0.30	-23	392.493958	0.70
i 1	6.600	0.70	-23	195.903290	0.70
i 1	9.900	0.40	-23	293.597839	0.70
i 1	11.500	0.50	-23	392.493958	0.70
i 1	13.200	1.00	-23	392.493958	0.70
i 1	16.600	0.50	-23	195.903290	0.70
i 1	19.900	0.40	-23	293.597839	0.70
i 1	23.100	0.60	-23	392.493958	0.70
i 1	26.600	1.00	-23	310.724396	0.70
i 1	29.800	0.60	-23	466.086578	0.70
i 1	31.600	0.60	-23	233.043289	0.70
i 1	33.400	0.80	-23	310.724396	0.70
i 1	36.600	0.60	-23	466.086578	0.70
i 1	38.400	0.30	-23	233.043289	0.70
i 1	40.100	0.90	-23	310.724396	0.70
i 1	43.400	0.50	-23	466.086578	0.70
i 1	46.600	0.70	-23	233.043289	0.70
i 1	50.000	0.60	-23	310.724396	0.70

s
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second


; Set the reverb for 2 seconds longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	32.400	0.9	1.0	1.0
i 99	+	24.000	0.9	1.0	0.001


; ****  Voice 1
; 1	time	dur	db	freq	pan
i 1	0.100	0.70	-20	782.243225	0.50
i 1	+	0.70	-20	740.799866	0.50
i 1	1.600	0.70	-20	782.243225	0.50
i 1	+	0.90	-20	880.793579	0.50
i 1	+	0.70	-20	932.173157	0.50
i 1	6.600	0.80	-20	782.243225	0.50
i 1	+	0.70	-20	740.799866	0.50
i 1	8.300	0.60	-20	782.243225	0.50
i 1	9.000	0.70	-20	880.793579	0.50
i 1	9.900	0.50	-20	932.173157	0.50
i 1	13.200	0.80	-20	782.243225	0.50
i 1	+	0.70	-20	740.799866	0.50
i 1	14.900	0.70	-20	782.243225	0.50
i 1	+	0.70	-20	880.793579	0.50
i 1	16.500	0.80	-20	932.173157	0.50
i 1	+	0.80	-20	880.793579	0.50
i 1	+	0.70	-20	932.173157	0.50
i 1	18.900	0.90	-20	1045.427856	0.50
i 1	+	0.70	-20	1177.481934	0.50
i 1	20.600	0.60	-20	1045.427856	0.50
i 1	21.500	0.80	-20	932.173157	0.50
i 1	+	0.80	-20	880.793579	0.50
i 1	23.200	0.80	-20	932.173157	0.50
i 1	24.900	0.60	-20	880.793579	0.50
i 1	26.700	0.70	-20	782.243225	0.50
i 1	+	0.60	-20	699.129883	0.50
i 1	28.200	0.60	-20	782.243225	0.50
i 1	28.900	1.00	-20	880.793579	0.50
i 1	+	0.60	-20	932.173157	0.50
i 1	33.500	0.70	-20	782.243225	0.50
i 1	+	0.60	-20	699.129883	0.50
i 1	35.100	0.60	-20	782.243225	0.50
i 1	35.800	0.70	-20	880.793579	0.50
i 1	36.600	0.70	-20	932.173157	0.50
i 1	40.200	0.60	-20	782.243225	0.50
i 1	40.900	0.80	-20	699.129883	0.50
i 1	41.800	0.70	-20	621.448792	0.50
i 1	42.600	0.70	-20	588.740967	0.50
i 1	+	0.70	-20	621.448792	0.50
i 1	44.200	0.80	-20	699.129883	0.50
i 1	45.100	0.70	-20	782.243225	0.50
i 1	+	0.80	-20	880.793579	0.50
i 1	+	0.90	-20	932.173157	0.50
i 1	+	0.70	-20	880.793579	0.50
i 1	+	0.70	-20	932.173157	0.50
i 1	49.100	0.80	-20	1045.427856	0.50
i 1	50.000	0.70	-20	1177.481934	0.50
i 1	50.800	0.70	-20	1045.427856	0.50
i 1	51.700	0.70	-20	932.173157	0.50
i 1	52.500	0.50	-20	880.793579	0.50


; ****  Voice 2
; 1	time	dur	db	freq	pan
i 1	0.000	0.60	-23	392.493958	0.70
i 1	3.200	0.50	-23	293.597839	0.70
i 1	4.900	0.30	-23	392.493958	0.70
i 1	6.600	0.70	-23	195.903290	0.70
i 1	9.900	0.40	-23	293.597839	0.70
i 1	11.500	0.50	-23	392.493958	0.70
i 1	13.200	1.00	-23	392.493958	0.70
i 1	16.600	0.50	-23	195.903290	0.70
i 1	19.900	0.40	-23	293.597839	0.70
i 1	23.100	0.60	-23	392.493958	0.70
i 1	26.600	1.00	-23	310.724396	0.70
i 1	29.800	0.60	-23	466.086578	0.70
i 1	31.600	0.60	-23	233.043289	0.70
i 1	33.400	0.80	-23	310.724396	0.70
i 1	36.600	0.60	-23	466.086578	0.70
i 1	38.400	0.30	-23	233.043289	0.70
i 1	40.100	0.90	-23	310.724396	0.70
i 1	43.400	0.50	-23	466.086578	0.70
i 1	46.600	0.70	-23	233.043289	0.70
i 1	50.000	0.60	-23	310.724396	0.70

