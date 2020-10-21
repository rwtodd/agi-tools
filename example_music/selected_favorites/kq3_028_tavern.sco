; This is '.', sound resource #28 of length 54.900002


; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 11-13 for the main voice (square wave)
; Instrument 21 for white noise
; Instrument 31 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second

; set up the instruments
i 1  0  0  1   0 73  ; flute
i 1  0  0  2   0 68  ; oboe
i 1  0  0  3   0 71 ; clarinet

; set up the panning
i 2  0  0  1 0.5
i 2  0  0  2 0.3
i 2  0  0  3 0.7
i 2  0  0  4 0

; Set the reverb for 1 second longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	60.900	0.9	1.0	1.0


; ****  Voice 1
; 11	time	dur	db	freq	pan
i 11	1.500	0.30	-20	1075.584473	
i 11	3.000	3.40	-20	1075.584473	
i 11	7.500	0.70	-20	1075.584473	
i 11	9.000	1.10	-20	1215.878052	
i 11	10.500	0.70	-20	1075.584473	
i 11	12.000	0.70	-20	1016.916199	
i 11	13.500	0.70	-20	1075.584473	
i 11	15.000	1.50	-20	909.437256	
i 11	18.000	0.80	-20	1075.584473	
i 11	20.300	0.30	-20	1075.584473	
i 11	21.000	2.60	-20	1075.584473	
i 11	25.500	0.40	-20	1075.584473	
i 11	27.000	3.00	-20	1075.584473	
i 11	31.500	0.80	-20	1075.584473	
i 11	33.000	0.80	-20	1215.878052	
i 11	34.500	0.40	-20	1075.584473	
i 11	36.000	0.80	-20	1016.916199	
i 11	37.500	0.80	-20	1075.584473	
i 11	39.000	1.20	-20	804.753845	
i 11	42.000	0.80	-20	1075.584473	
i 11	44.300	0.40	-20	1075.584473	
i 11	45.100	0.70	-20	1075.584473	
i 11	46.600	0.70	-20	964.317078	
i 11	48.100	0.60	-20	909.437256	
i 11	49.700	0.60	-20	804.753845	
i 11	51.100	0.70	-20	717.056274	
i 11	53.700	0.40	-20	677.944153	
i 11	+	0.70	-20	717.056274	


; ****  Voice 2
; 12	time	dur	db	freq	pan
i 12	3.000	0.40	-26	358.528137	
i 12	4.500	0.40	-26	537.792236	
i 12	6.000	0.40	-26	268.896118	
i 12	7.500	0.40	-26	537.792236	
i 12	9.000	0.40	-26	358.528137	
i 12	10.500	0.40	-26	537.792236	
i 12	12.000	0.40	-26	268.896118	
i 12	13.500	0.40	-26	537.792236	
i 12	15.000	0.40	-26	358.528137	
i 12	16.500	0.40	-26	537.792236	
i 12	18.000	0.40	-26	268.896118	
i 12	19.600	0.30	-26	537.792236	
i 12	21.100	0.30	-26	358.528137	
i 12	22.600	0.30	-26	338.972076	
i 12	24.100	0.30	-26	301.511536	
i 12	25.600	0.30	-26	268.896118	
i 12	27.100	0.30	-26	358.528137	
i 12	28.600	0.30	-26	537.792236	
i 12	30.100	0.30	-26	268.896118	
i 12	31.600	0.40	-26	537.792236	
i 12	33.100	0.40	-26	358.528137	
i 12	34.600	0.40	-26	537.792236	
i 12	36.100	0.40	-26	268.896118	
i 12	37.600	0.40	-26	537.792236	
i 12	39.100	0.40	-26	268.896118	
i 12	40.600	0.40	-26	537.792236	
i 12	42.100	0.40	-26	402.376923	
i 12	43.600	0.40	-26	537.792236	
i 12	45.100	0.80	-26	268.896118	
i 12	46.600	0.80	-26	284.633026	
i 12	48.100	0.80	-26	301.511536	
i 12	49.600	0.80	-26	338.972076	
i 12	51.100	0.80	-26	358.528137	
i 12	54.100	0.80	-26	179.264069	


; ****  Voice 3
; 13	time	dur	db	freq	pan
i 13	3.000	3.00	-26	909.437256	
i 13	7.500	0.40	-26	909.437256	
i 13	9.000	1.20	-26	964.317078	
i 13	10.500	0.30	-26	909.437256	
i 13	12.000	1.00	-26	853.899109	
i 13	13.500	0.50	-26	909.437256	
i 13	15.000	1.00	-26	717.056274	
i 13	18.000	1.00	-26	909.437256	
i 13	20.400	0.40	-26	909.437256	
i 13	21.000	3.20	-26	909.437256	
i 13	25.600	0.30	-26	909.437256	
i 13	27.100	3.10	-26	909.437256	
i 13	31.600	0.50	-26	909.437256	
i 13	33.100	1.00	-26	964.317078	
i 13	34.600	0.60	-26	909.437256	
i 13	36.100	1.00	-26	853.899109	
i 13	37.600	0.50	-26	909.437256	
i 13	39.100	1.20	-26	677.944153	
i 13	42.100	0.70	-26	677.944153	
i 13	44.300	0.40	-26	677.944153	
i 13	45.100	0.40	-26	677.944153	
i 13	46.600	0.40	-26	677.944153	
i 13	48.100	0.40	-26	677.944153	
i 13	49.600	0.40	-26	677.944153	
i 13	51.100	0.40	-26	717.056274	


; ****  Voice 4 (Noise)
;  	time	dur	db	freq