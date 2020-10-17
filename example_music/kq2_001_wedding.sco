; This is '.', sound resource #1 of length 187.500000

; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 11-13 for the main voice (square wave)
; Instrument 21 for white noise
; Instrument 31 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second


; set up the instruments
i 1  0    0  1  8 19 ;; pipe organ
i 1  0    0  2  8 19 ;; pipe organ
i 1  0    0  3  8 19 ;; pipe organ

; set up the panning
i 2  0  0  1 0.5
i 2  0  0  2 0.7
i 2  0  0  3 0.3

; Set the reverb for 1 second longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	193.500	0.9	1.0	1.0


; ****  Voice 1
; 11	time	dur	db	freq	pan
i 11	0.000	5.10	-20	537.792236	
i 11	5.400	0.60	-20	537.792236	
i 11	6.300	0.60	-20	537.792236	
i 11	7.200	5.10	-20	537.792236	
i 11	12.600	0.60	-20	537.792236	
i 11	13.500	0.60	-20	537.792236	
i 11	14.400	5.10	-20	677.944153	
i 11	19.800	0.60	-20	677.944153	
i 11	20.700	0.60	-20	677.944153	
i 11	21.600	5.10	-20	677.944153	
i 11	27.000	0.60	-20	677.944153	
i 11	27.900	0.60	-20	677.944153	
i 11	28.800	5.10	-20	804.753845	
i 11	34.200	0.60	-20	804.753845	
i 11	35.100	0.60	-20	804.753845	
i 11	36.000	5.10	-20	804.753845	
i 11	41.400	0.60	-20	804.753845	
i 11	42.300	0.60	-20	804.753845	
i 11	43.200	5.10	-20	1075.584473	
i 11	48.600	0.60	-20	1075.584473	
i 11	49.500	0.60	-20	1075.584473	
i 11	50.400	0.90	-20	1075.584473	
i 11	52.200	0.90	-20	1075.584473	
i 11	54.000	0.90	-20	1075.584473	
i 11	55.800	0.90	-20	1075.584473	
i 11	57.600	3.60	-20	537.792236	
i 11	+	1.80	-20	717.056274	
i 11	63.900	0.60	-20	717.056274	
i 11	64.800	7.20	-20	717.056274	
i 11	+	3.60	-20	537.792236	
i 11	+	1.80	-20	804.753845	
i 11	78.300	0.60	-20	677.944153	
i 11	79.200	7.20	-20	717.056274	
i 11	+	3.60	-20	537.792236	
i 11	+	1.80	-20	717.056274	
i 11	92.700	0.60	-20	964.317078	
i 11	93.600	3.60	-20	964.317078	
i 11	+	1.80	-20	909.437256	
i 11	99.900	0.60	-20	804.753845	
i 11	100.800	1.80	-20	717.056274	
i 11	+	0.90	-20	804.753845	
i 11	+	0.90	-20	717.056274	
i 11	+	1.80	-20	677.944153	
i 11	+	1.80	-20	717.056274	
i 11	+	0.90	-20	804.753845	
i 11	109.800	0.60	-20	1075.584473	
i 11	110.700	0.60	-20	1075.584473	
i 11	111.600	0.90	-20	1075.584473	
i 11	113.400	0.90	-20	1075.584473	
i 11	115.200	3.60	-20	537.792236	
i 11	+	1.80	-20	717.056274	
i 11	121.500	0.60	-20	717.056274	
i 11	122.400	7.20	-20	717.056274	
i 11	+	3.60	-20	537.792236	
i 11	+	1.80	-20	804.753845	
i 11	135.900	0.60	-20	677.944153	
i 11	136.800	7.20	-20	717.056274	
i 11	+	3.60	-20	537.792236	
i 11	+	1.80	-20	717.056274	
i 11	150.300	0.60	-20	909.437256	
i 11	151.200	3.60	-20	1075.584473	
i 11	+	1.80	-20	909.437256	
i 11	157.500	0.60	-20	717.056274	
i 11	158.400	7.20	-20	1215.878052	
i 11	+	1.80	-20	1075.584473	
i 11	+	1.80	-20	964.317078	
i 11	+	1.80	-20	909.437256	
i 11	171.900	0.60	-20	804.753845	
i 11	172.800	1.80	-20	717.056274	
i 11	+	0.60	-20	1075.584473	
i 11	175.500	0.60	-20	1075.584473	
i 11	176.400	0.90	-20	1075.584473	
i 11	178.200	0.90	-20	1075.584473	
i 11	180.000	7.50	-20	1434.112549	


; ****  Voice 2
; 12	time	dur	db	freq	pan
i 12	14.400	5.10	-23	537.792236	
i 12	19.800	0.60	-23	537.792236	
i 12	20.700	0.60	-23	537.792236	
i 12	21.600	5.10	-23	537.792236	
i 12	27.000	0.60	-23	537.792236	
i 12	27.900	0.60	-23	537.792236	
i 12	28.800	5.10	-23	677.944153	
i 12	34.200	0.60	-23	677.944153	
i 12	35.100	0.60	-23	677.944153	
i 12	36.000	5.10	-23	677.944153	
i 12	41.400	0.60	-23	677.944153	
i 12	42.300	0.60	-23	677.944153	
i 12	43.200	5.10	-23	804.753845	
i 12	48.600	0.60	-23	804.753845	
i 12	49.500	0.60	-23	804.753845	
i 12	50.400	0.90	-23	804.753845	
i 12	52.200	0.90	-23	804.753845	
i 12	54.000	0.90	-23	804.753845	
i 12	55.800	0.90	-23	804.753845	
i 12	57.600	3.30	-23	452.877655	
i 12	61.200	1.80	-23	452.877655	
i 12	63.900	0.60	-23	452.877655	
i 12	64.800	7.20	-23	452.877655	
i 12	+	3.30	-23	452.877655	
i 12	75.600	1.80	-23	480.089203	
i 12	78.300	0.60	-23	480.089203	
i 12	79.200	7.20	-23	452.877655	
i 12	+	3.30	-23	452.877655	
i 12	90.000	1.80	-23	452.877655	
i 12	92.700	0.60	-23	452.877655	
i 12	93.600	3.30	-23	604.652893	
i 12	97.200	3.60	-23	604.652893	
i 12	+	3.30	-23	452.877655	
i 12	104.400	1.50	-23	452.877655	
i 12	106.200	1.80	-23	452.877655	
i 12	+	3.30	-23	480.089203	
i 12	111.600	3.60	-23	480.089203	
i 12	+	3.30	-23	452.877655	
i 12	118.800	1.80	-23	452.877655	
i 12	121.500	0.60	-23	452.877655	
i 12	122.400	6.90	-23	452.877655	
i 12	129.600	3.30	-23	452.877655	
i 12	133.200	1.80	-23	480.089203	
i 12	135.900	0.60	-23	480.089203	
i 12	136.800	6.90	-23	452.877655	
i 12	144.000	3.30	-23	452.877655	
i 12	147.600	1.80	-23	452.877655	
i 12	150.300	0.60	-23	452.877655	
i 12	151.200	3.30	-23	452.877655	
i 12	154.800	1.80	-23	452.877655	
i 12	157.500	0.60	-23	452.877655	
i 12	158.400	7.20	-23	717.056274	
i 12	+	1.50	-23	677.944153	
i 12	167.400	1.50	-23	677.944153	
i 12	169.200	1.80	-23	677.944153	
i 12	171.900	0.60	-23	480.089203	
i 12	172.800	7.20	-23	717.056274	
i 12	+	7.50	-23	909.437256	


; ****  Voice 3
; 13	time	dur	db	freq	pan
i 13	28.800	5.10	-29	537.792236	
i 13	34.200	0.60	-29	537.792236	
i 13	35.100	0.60	-29	537.792236	
i 13	36.000	5.10	-29	537.792236	
i 13	41.400	0.60	-29	537.792236	
i 13	42.300	0.60	-29	537.792236	
i 13	43.200	5.10	-29	677.944153	
i 13	48.600	0.60	-29	677.944153	
i 13	49.500	0.60	-29	677.944153	
i 13	50.400	0.90	-29	677.944153	
i 13	52.200	0.90	-29	677.944153	
i 13	54.000	0.90	-29	677.944153	
i 13	55.800	0.90	-29	677.944153	
i 13	57.600	3.30	-29	179.264069	
i 13	61.200	3.30	-29	179.264069	
i 13	64.800	3.30	-29	179.264069	
i 13	68.400	3.30	-29	179.264069	
i 13	72.000	3.30	-29	179.264069	
i 13	75.600	3.30	-29	268.896118	
i 13	79.200	3.30	-29	179.264069	
i 13	82.800	3.30	-29	179.264069	
i 13	86.400	3.30	-29	179.264069	
i 13	90.000	3.30	-29	179.264069	
i 13	93.600	3.30	-29	239.530579	
i 13	97.200	3.30	-29	239.530579	
i 13	100.800	3.30	-29	179.264069	
i 13	104.400	3.30	-29	179.264069	
i 13	108.000	3.30	-29	268.896118	
i 13	111.600	3.30	-29	268.896118	
i 13	115.200	3.30	-29	179.264069	
i 13	118.800	3.30	-29	179.264069	
i 13	122.400	3.30	-29	179.264069	
i 13	126.000	3.30	-29	179.264069	
i 13	129.600	3.30	-29	179.264069	
i 13	133.200	3.30	-29	268.896118	
i 13	136.800	3.30	-29	179.264069	
i 13	140.400	3.30	-29	179.264069	
i 13	144.000	3.30	-29	179.264069	
i 13	147.600	3.30	-29	179.264069	
i 13	151.200	3.30	-29	179.264069	
i 13	154.800	3.30	-29	179.264069	
i 13	158.400	3.30	-29	239.530579	
i 13	162.000	3.30	-29	239.530579	
i 13	165.600	3.30	-29	268.896118	
i 13	169.200	3.30	-29	268.896118	
i 13	172.800	3.60	-29	179.264069	
i 13	+	3.60	-29	268.896118	
i 13	+	7.50	-29	179.264069	


; ****  Voice 4 (Noise)
;  	time	dur	db	freq