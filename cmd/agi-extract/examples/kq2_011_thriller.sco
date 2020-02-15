; This is '.', sound resource #11 of length 59.099998

; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 1 for the main voice (square wave)
; Instrument 2 for white noise
; Instrument 3 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second


; Set the reverb for 1 second longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	65.100	0.9	1.0	1.0


; ****  Voice 1
; 1	time	dur	db	freq	pan
i 1	0.000	0.90	-20	142.316513	0.50
i 1	1.200	7.20	-20	142.316513	0.50
i 1	9.000	0.60	-20	213.068161	0.50
i 1	+	1.20	-20	284.633026	0.50
i 1	+	1.20	-20	338.972076	0.50
i 1	+	1.20	-20	380.478851	0.50
i 1	+	1.20	-20	426.949554	0.50
i 1	+	1.20	-20	284.633026	0.50
i 1	+	1.20	-20	853.899109	0.50
i 1	+	1.20	-20	1016.916199	0.50
i 1	+	1.20	-20	853.899109	0.50
i 1	+	1.20	-20	1141.436523	0.50
i 1	+	7.20	-20	1016.916199	0.50
i 1	28.800	1.20	-20	1016.916199	0.50
i 1	+	7.20	-20	964.317078	0.50
i 1	37.800	0.60	-20	677.944153	0.50
i 1	+	1.20	-20	853.899109	0.50
i 1	+	0.90	-20	760.957703	0.50
i 1	40.800	1.20	-20	760.957703	0.50
i 1	+	0.30	-20	677.944153	0.50
i 1	42.600	0.60	-20	677.944153	0.50
i 1	44.400	1.20	-20	570.718262	0.50
i 1	+	1.20	-20	677.944153	0.50
i 1	+	1.20	-20	760.957703	0.50
i 1	+	1.20	-20	804.753845	0.50
i 1	+	1.20	-20	760.957703	0.50
i 1	+	1.20	-20	677.944153	0.50
i 1	+	0.90	-20	570.718262	0.50
i 1	52.800	0.60	-20	570.718262	0.50
i 1	54.000	1.20	-20	853.899109	0.50
i 1	+	1.20	-20	1016.916199	0.50
i 1	+	1.20	-20	853.899109	0.50
i 1	+	1.50	-20	1141.436523	0.50


; ****  Voice 2
; 1	time	dur	db	freq	pan
i 1	14.400	3.60	-20	284.633026	0.70
i 1	18.600	0.60	-20	213.068161	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	+	1.20	-20	338.972076	0.70
i 1	+	1.20	-20	380.478851	0.70
i 1	+	1.20	-20	426.949554	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	28.200	0.60	-20	213.068161	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	+	1.20	-20	338.972076	0.70
i 1	+	1.20	-20	380.478851	0.70
i 1	+	1.20	-20	426.949554	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	37.800	0.60	-20	213.068161	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	+	1.20	-20	338.972076	0.70
i 1	+	1.20	-20	380.478851	0.70
i 1	+	1.20	-20	426.949554	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	47.400	0.60	-20	213.068161	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	+	1.20	-20	338.972076	0.70
i 1	+	1.20	-20	380.478851	0.70
i 1	+	1.20	-20	426.949554	0.70
i 1	+	1.20	-20	284.633026	0.70
i 1	+	1.20	-20	426.949554	0.70
i 1	+	1.20	-20	508.458099	0.70
i 1	+	1.20	-20	426.949554	0.70
i 1	+	1.50	-20	570.718262	0.70


; ****  Voice 3
; 1	time	dur	db	freq	pan
i 1	0.000	0.90	-20	142.316513	0.30
i 1	1.200	7.20	-20	142.316513	0.30
i 1	9.600	0.90	-20	142.316513	0.30
i 1	10.800	7.20	-20	142.316513	0.30
i 1	19.200	0.90	-20	142.316513	0.30
i 1	20.400	7.20	-20	142.316513	0.30
i 1	28.800	0.90	-20	142.316513	0.30
i 1	30.000	7.20	-20	142.316513	0.30
i 1	38.400	0.90	-20	142.316513	0.30
i 1	39.600	7.20	-20	142.316513	0.30
i 1	48.000	0.90	-20	142.316513	0.30
i 1	49.200	4.80	-20	142.316513	0.30
i 1	+	1.20	-20	213.068161	0.30
i 1	+	1.20	-20	253.652573	0.30
i 1	+	1.20	-20	213.068161	0.30
i 1	+	1.50	-20	284.633026	0.30


; ****  Voice 4 (Noise)
;  	time	dur	db	freq