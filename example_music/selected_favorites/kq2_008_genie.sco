; This is '.', sound resource #8 of length 73.500000

; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 1 for the main voice (square wave)
; Instrument 2 for white noise
; Instrument 3 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second

; set up the instruments
i 1  0    0  1  0 104  ;; sitar
i 1  0    0  2  0 104  ;; sitar
i 1  0    0  3  0 12  ;; marimba

; set up the panning
i 2  0  0  1 0.5
i 2  0  0  2 0.7
i 2  0  0  3 0.3

; Set the reverb for 1 second longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	79.500	0.9	1.0	1.0


; ****  Voice 1
; 11	time	dur	db	freq	pan
i 11	0.000	1.20	-20	338.972076
i 11	+	1.20	-20	508.458099	
i 11	3.600	1.20	-20	508.458099	
i 11	6.000	1.20	-20	508.458099	
i 11	+	2.40	-20	253.652573	
i 11	+	1.20	-20	804.753845	
i 11	+	1.20	-20	909.437256	
i 11	+	4.80	-20	1016.916199	
i 11	+	1.20	-20	1016.916199	
i 11	+	1.20	-20	1075.584473	
i 11	+	1.20	-20	1285.756104	
i 11	+	1.20	-20	1364.155884	
i 11	+	1.20	-20	1285.756104	
i 11	+	1.20	-20	1075.584473	
i 11	+	4.80	-20	1016.916199	
i 11	+	1.20	-20	1016.916199	
i 11	+	1.20	-20	909.437256	
i 11	+	1.20	-20	804.753845	
i 11	+	1.20	-20	909.437256	
i 11	+	1.20	-20	804.753845	
i 11	+	1.20	-20	760.957703	
i 11	+	4.80	-20	677.944153	
i 11	+	1.20	-20	1016.916199	
i 11	+	1.20	-20	1075.584473	
i 11	+	2.40	-20	1285.756104	
i 11	+	2.40	-20	1075.584473	
i 11	+	4.80	-20	1016.916199	
i 11	+	1.20	-20	1285.756104	
i 11	+	1.20	-20	1075.584473	
i 11	+	1.20	-20	1016.916199	
i 11	+	1.20	-20	909.437256	
i 11	+	1.20	-20	804.753845	
i 11	+	1.20	-20	760.957703	
i 11	+	12.00	-20	677.944153	
i 11	+	1.50	-20	1364.155884	


; ****  Voice 2
; 12	time	dur	db	freq	pan
i 12	9.600	2.40	-20	508.458099	
i 12	+	1.20	-26	338.972076	
i 12	+	1.20	-26	508.458099	
i 12	15.600	1.20	-26	508.458099	
i 12	18.000	1.20	-26	508.458099	
i 12	+	2.40	-26	253.652573	
i 12	+	1.50	-26	508.458099	
i 12	24.000	1.20	-26	338.972076	
i 12	+	1.20	-26	508.458099	
i 12	27.600	1.20	-26	508.458099	
i 12	30.000	1.20	-26	508.458099	
i 12	+	2.40	-26	253.652573	
i 12	+	1.50	-26	508.458099	
i 12	36.000	1.20	-26	338.972076	
i 12	+	1.20	-26	508.458099	
i 12	39.600	1.20	-26	508.458099	
i 12	42.000	1.20	-26	508.458099	
i 12	+	2.40	-26	253.652573	
i 12	+	1.50	-26	508.458099	
i 12	48.000	1.20	-26	338.972076	
i 12	+	1.20	-26	508.458099	
i 12	51.600	1.20	-26	508.458099	
i 12	54.000	1.20	-26	508.458099	
i 12	+	2.40	-26	253.652573	
i 12	+	1.50	-26	508.458099	
i 12	60.000	1.20	-26	338.972076	
i 12	+	1.20	-26	508.458099	
i 12	63.600	1.20	-26	508.458099	
i 12	66.000	1.20	-26	508.458099	
i 12	+	2.40	-26	253.652573	
i 12	+	1.50	-26	508.458099	
i 12	72.000	1.50	-26	338.972076	


; ****  Voice 3
; 13	time	dur	db	freq	pan
i 13	0.000	0.90	-30	2728.311768	
i 13	1.200	0.30	-30	2728.311768	
i 13	1.800	0.30	-30	2728.311768	
i 13	2.400	0.90	-30	2728.311768	
i 13	3.600	0.30	-30	2728.311768	
i 13	4.200	0.30	-30	2728.311768	
i 13	4.800	0.90	-30	2728.311768	
i 13	6.000	0.30	-30	2728.311768	
i 13	6.600	0.30	-30	2728.311768	
i 13	7.200	0.90	-30	2728.311768	
i 13	8.400	0.30	-30	2728.311768	
i 13	9.000	0.30	-30	2728.311768	
i 13	9.600	0.60	-30	2728.311768	
i 13	10.800	0.60	-30	2728.311768	
i 13	12.000	0.90	-30	2728.311768	
i 13	13.200	0.30	-30	2728.311768	
i 13	13.800	0.30	-30	2728.311768	
i 13	14.400	0.90	-30	2728.311768	
i 13	15.600	0.30	-30	2728.311768	
i 13	16.200	0.30	-30	2728.311768	
i 13	16.800	0.90	-30	2728.311768	
i 13	18.000	0.30	-30	2728.311768	
i 13	18.600	0.30	-30	2728.311768	
i 13	19.200	0.90	-30	2728.311768	
i 13	20.400	0.30	-30	2728.311768	
i 13	21.000	0.30	-30	2728.311768	
i 13	21.600	0.60	-30	2728.311768	
i 13	22.800	0.60	-30	2728.311768	
i 13	24.000	0.90	-30	2728.311768	
i 13	25.200	0.30	-30	2728.311768	
i 13	25.800	0.30	-30	2728.311768	
i 13	26.400	0.90	-30	2728.311768	
i 13	27.600	0.30	-30	2728.311768	
i 13	28.200	0.30	-30	2728.311768	
i 13	28.800	0.90	-30	2728.311768	
i 13	30.000	0.30	-30	2728.311768	
i 13	30.600	0.30	-30	2728.311768	
i 13	31.200	0.90	-30	2728.311768	
i 13	32.400	0.30	-30	2728.311768	
i 13	33.000	0.30	-30	2728.311768	
i 13	33.600	0.60	-30	2728.311768	
i 13	34.800	0.60	-30	2728.311768	
i 13	36.000	0.90	-30	2728.311768	
i 13	37.200	0.30	-30	2728.311768	
i 13	37.800	0.30	-30	2728.311768	
i 13	38.400	0.90	-30	2728.311768	
i 13	39.600	0.30	-30	2728.311768	
i 13	40.200	0.30	-30	2728.311768	
i 13	40.800	0.90	-30	2728.311768	
i 13	42.000	0.30	-30	2728.311768	
i 13	42.600	0.30	-30	2728.311768	
i 13	43.200	0.90	-30	2728.311768	
i 13	44.400	0.30	-30	2728.311768	
i 13	45.000	0.30	-30	2728.311768	
i 13	45.600	0.60	-30	2728.311768	
i 13	46.800	0.60	-30	2728.311768	
i 13	48.000	0.90	-30	2728.311768	
i 13	49.200	0.30	-30	2728.311768	
i 13	49.800	0.30	-30	2728.311768	
i 13	50.400	0.90	-30	2728.311768	
i 13	51.600	0.30	-30	2728.311768	
i 13	52.200	0.30	-30	2728.311768	
i 13	52.800	0.90	-30	2728.311768	
i 13	54.000	0.30	-30	2728.311768	
i 13	54.600	0.30	-30	2728.311768	
i 13	55.200	0.90	-30	2728.311768	
i 13	56.400	0.30	-30	2728.311768	
i 13	57.000	0.30	-30	2728.311768	
i 13	57.600	0.60	-30	2728.311768	
i 13	58.800	0.60	-30	2728.311768	
i 13	60.000	0.90	-30	2728.311768	
i 13	61.200	0.30	-30	2728.311768	
i 13	61.800	0.30	-30	2728.311768	
i 13	62.400	0.90	-30	2728.311768	
i 13	63.600	0.30	-30	2728.311768	
i 13	64.200	0.30	-30	2728.311768	
i 13	64.800	0.90	-30	2728.311768	
i 13	66.000	0.30	-30	2728.311768	
i 13	66.600	0.30	-30	2728.311768	
i 13	67.200	0.90	-30	2728.311768	
i 13	68.400	0.30	-30	2728.311768	
i 13	69.000	0.30	-30	2728.311768	
i 13	69.600	0.60	-30	2728.311768	
i 13	70.800	0.60	-30	2728.311768	
i 13	72.000	1.50	-30	2728.311768	


; ****  Voice 4 (Noise)
;  	time	dur	db	freq