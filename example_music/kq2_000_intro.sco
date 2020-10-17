; This is '.', sound resource #0 of length 194.699997

; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 11-13 for the main voice (square wave)
; Instrument 21 for white noise
; Instrument 31 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second


; set up the instruments
i 1  0    0  1  0 7 ;; clavinet
i 1  0    0  2  0 7 ;; clavinet
i 1  0    0  3  0 7 ;; clavinet

; set up the panning
i 2  0  0  1 0.5
i 2  0  0  2 0.7
i 2  0  0  3 0.3


; Set the reverb for 1 second longer than the song
;   				reverb	gain	gain
; 99	start	dur	depth	Start	End
i 99	0	200.700	0.9	1.0	1.0


; ****  Voice 1
; 11	time	dur	db	freq	pan
i 11	0.000	1.80	-20	677.944153	
i 11	+	3.60	-20	804.753845	
i 11	+	1.80	-20	909.437256	
i 11	+	2.70	-20	1016.916199	
i 11	+	0.90	-20	1075.584473	
i 11	+	1.80	-20	1016.916199	
i 11	+	3.60	-20	909.437256	
i 11	+	1.80	-20	760.957703	
i 11	+	2.70	-20	604.652893	
i 11	+	0.90	-20	677.944153	
i 11	+	1.80	-20	760.957703	
i 11	+	3.60	-20	804.753845	
i 11	+	1.50	-20	677.944153	
i 11	28.800	2.70	-20	677.944153	
i 11	+	0.90	-20	639.204468	
i 11	+	1.80	-20	677.944153	
i 11	+	3.60	-20	760.957703	
i 11	+	1.80	-20	639.204468	
i 11	+	3.60	-20	508.458099	
i 11	+	1.80	-20	677.944153	
i 11	+	3.60	-20	804.753845	
i 11	+	1.80	-20	909.437256	
i 11	+	2.70	-20	1016.916199	
i 11	+	0.90	-20	1075.584473	
i 11	+	1.80	-20	1016.916199	
i 11	+	3.60	-20	909.437256	
i 11	+	1.80	-20	760.957703	
i 11	+	2.70	-20	604.652893	
i 11	+	0.90	-20	677.944153	
i 11	+	1.80	-20	760.957703	
i 11	+	2.70	-20	804.753845	
i 11	+	0.90	-20	760.957703	
i 11	+	1.80	-20	677.944153	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	1.80	-20	639.204468	
i 11	+	0.90	-20	570.718262	
i 11	+	1.80	-20	639.204468	
i 11	+	5.10	-20	677.944153	
i 11	82.800	5.40	-20	677.944153	
i 11	+	5.10	-20	1215.878052	
i 11	93.600	2.70	-20	1215.878052	
i 11	+	0.90	-20	1075.584473	
i 11	+	1.80	-20	1016.916199	
i 11	+	3.60	-20	909.437256	
i 11	+	1.80	-20	760.957703	
i 11	+	2.70	-20	604.652893	
i 11	+	0.90	-20	677.944153	
i 11	+	1.80	-20	760.957703	
i 11	+	3.60	-20	804.753845	
i 11	+	1.50	-20	677.944153	
i 11	115.200	2.70	-20	677.944153	
i 11	+	0.90	-20	639.204468	
i 11	+	1.80	-20	677.944153	
i 11	+	3.60	-20	760.957703	
i 11	+	1.80	-20	639.204468	
i 11	+	5.40	-20	508.458099	
i 11	+	5.10	-20	1215.878052	
i 11	136.800	2.70	-20	1215.878052	
i 11	+	0.90	-20	1075.584473	
i 11	+	1.80	-20	1016.916199	
i 11	+	3.60	-20	909.437256	
i 11	+	1.80	-20	760.957703	
i 11	+	2.70	-20	604.652893	
i 11	+	0.90	-20	677.944153	
i 11	+	1.80	-20	760.957703	
i 11	+	2.70	-20	804.753845	
i 11	+	0.90	-20	760.957703	
i 11	+	1.80	-20	677.944153	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	0.30	-20	677.944153	
i 11	+	0.30	-20	639.204468	
i 11	+	1.80	-20	570.718262	
i 11	+	3.60	-20	639.204468	
i 11	+	10.80	-20	677.944153	
i 11	+	14.70	-20	677.944153	


; ****  Voice 2
; 12	time	dur	db	freq	pan
i 12	1.800	3.60	-26	677.944153	
i 12	+	1.80	-26	604.652893	
i 12	+	3.60	-26	604.652893	
i 12	+	1.80	-26	804.753845	
i 12	+	3.60	-26	760.957703	
i 12	+	1.80	-26	604.652893	
i 12	+	3.60	-26	380.478851	
i 12	+	1.80	-26	537.792236	
i 12	+	3.30	-26	508.458099	
i 12	27.000	1.80	-26	508.458099	
i 12	+	3.60	-26	452.877655	
i 12	+	1.80	-26	537.792236	
i 12	+	3.60	-26	639.204468	
i 12	+	1.80	-26	508.458099	
i 12	+	3.60	-26	319.602234	
i 12	+	1.80	-26	677.944153	
i 12	+	1.80	-26	508.458099	
i 12	+	3.60	-26	677.944153	
i 12	+	1.80	-26	804.753845	
i 12	+	3.60	-26	604.652893	
i 12	+	1.80	-26	760.957703	
i 12	+	3.60	-26	604.652893	
i 12	+	1.80	-26	380.478851	
i 12	+	3.60	-26	452.877655	
i 12	+	5.40	-26	508.458099	
i 12	+	1.80	-26	452.877655	
i 12	+	3.60	-26	380.478851	
i 12	+	1.80	-26	402.376923	
i 12	+	1.80	-26	452.877655	
i 12	+	1.80	-26	380.478851	
i 12	+	5.40	-26	402.376923	
i 12	+	1.80	-26	508.458099	
i 12	+	1.80	-26	604.652893	
i 12	+	1.80	-26	804.753845	
i 12	+	1.80	-26	1016.916199	
i 12	+	3.60	-26	804.753845	
i 12	+	1.80	-26	380.478851	
i 12	+	1.80	-26	452.877655	
i 12	+	1.80	-26	604.652893	
i 12	+	1.80	-26	380.478851	
i 12	+	1.80	-26	452.877655	
i 12	+	1.80	-26	537.792236	
i 12	+	1.80	-26	508.458099	
i 12	+	1.80	-26	402.376923	
i 12	+	1.80	-26	508.458099	
i 12	+	1.80	-26	452.877655	
i 12	+	3.60	-26	537.792236	
i 12	+	1.80	-26	639.204468	
i 12	+	1.80	-26	380.478851	
i 12	+	1.80	-26	508.458099	
i 12	+	0.90	-26	253.652573	
i 12	+	0.90	-26	319.602234	
i 12	+	0.90	-26	380.478851	
i 12	+	0.90	-26	452.877655	
i 12	+	0.90	-26	508.458099	
i 12	+	0.90	-26	537.792236	
i 12	+	0.90	-26	508.458099	
i 12	+	0.90	-26	604.652893	
i 12	+	0.90	-26	804.753845	
i 12	+	0.90	-26	1016.916199	
i 12	+	0.90	-26	804.753845	
i 12	+	0.90	-26	604.652893	
i 12	+	0.90	-26	508.458099	
i 12	+	0.90	-26	604.652893	
i 12	+	0.90	-26	804.753845	
i 12	+	0.90	-26	677.944153	
i 12	+	0.90	-26	804.753845	
i 12	+	0.90	-26	677.944153	
i 12	+	0.90	-26	380.478851	
i 12	+	0.90	-26	452.877655	
i 12	+	0.90	-26	604.652893	
i 12	+	0.90	-26	452.877655	
i 12	+	0.90	-26	604.652893	
i 12	+	0.90	-26	452.877655	
i 12	+	0.90	-26	380.478851	
i 12	+	0.90	-26	452.877655	
i 12	+	0.90	-26	604.652893	
i 12	+	0.90	-26	537.792236	
i 12	+	0.90	-26	452.877655	
i 12	+	0.90	-26	537.792236	
i 12	+	0.90	-26	508.458099	
i 12	+	0.90	-26	402.376923	
i 12	+	0.90	-26	508.458099	
i 12	+	2.70	-26	402.376923	
i 12	+	10.80	-26	452.877655	
i 12	+	7.20	-26	452.877655	
i 12	+	3.60	-26	380.478851	
i 12	+	14.70	-26	426.949554	


; ****  Voice 3
; 13	time	dur	db	freq	pan
i 13	1.800	3.60	-23	338.972076	
i 13	+	1.80	-23	380.478851	
i 13	+	3.60	-23	402.376923	
i 13	+	1.80	-23	402.376923	
i 13	+	3.60	-23	301.511536	
i 13	+	1.80	-23	301.511536	
i 13	+	3.60	-23	301.511536	
i 13	+	1.80	-23	319.602234	
i 13	+	3.60	-23	338.972076	
i 13	+	1.80	-23	301.511536	
i 13	+	3.60	-23	268.896118	
i 13	+	1.80	-23	225.981369	
i 13	+	5.40	-23	253.652573	
i 13	+	5.40	-23	253.652573	
i 13	+	3.60	-23	169.229630	
i 13	+	1.80	-23	189.916443	
i 13	+	2.70	-23	201.188461	
i 13	+	0.90	-23	225.981369	
i 13	+	0.90	-23	253.652573	
i 13	+	0.90	-23	268.896118	
i 13	+	3.60	-23	301.511536	
i 13	+	1.80	-23	225.981369	
i 13	+	3.60	-23	150.755768	
i 13	+	1.80	-23	159.801117	
i 13	+	1.80	-23	169.229630	
i 13	+	1.80	-23	189.916443	
i 13	+	0.90	-23	201.188461	
i 13	+	0.90	-23	225.981369	
i 13	+	5.40	-23	253.652573	
i 13	+	5.40	-23	338.972076	
i 13	+	5.40	-23	169.229630	
i 13	+	1.80	-23	402.376923	
i 13	+	3.60	-23	201.188461	
i 13	+	1.80	-23	253.652573	
i 13	+	1.80	-23	268.896118	
i 13	+	1.80	-23	284.633026	
i 13	+	1.80	-23	301.511536	
i 13	+	1.80	-23	150.755768	
i 13	+	1.80	-23	225.981369	
i 13	+	3.60	-23	301.511536	
i 13	+	1.80	-23	319.602234	
i 13	+	1.80	-23	338.972076	
i 13	+	1.80	-23	169.229630	
i 13	+	1.80	-23	253.652573	
i 13	+	3.60	-23	268.896118	
i 13	+	1.80	-23	239.530579	
i 13	+	3.60	-23	253.652573	
i 13	+	1.80	-23	253.652573	
i 13	+	5.40	-23	253.652573	
i 13	+	1.80	-23	402.376923	
i 13	+	3.60	-23	201.188461	
i 13	+	1.80	-23	253.652573	
i 13	+	1.80	-23	268.896118	
i 13	+	1.80	-23	284.633026	
i 13	+	1.80	-23	301.511536	
i 13	+	1.80	-23	150.755768	
i 13	+	1.80	-23	225.981369	
i 13	+	3.60	-23	301.511536	
i 13	+	1.80	-23	319.602234	
i 13	+	1.80	-23	338.972076	
i 13	+	1.80	-23	169.229630	
i 13	+	1.80	-23	239.530579	
i 13	+	10.80	-23	253.652573	
i 13	+	10.80	-23	338.972076	
i 13	+	14.70	-23	169.229630	


; ****  Voice 4 (Noise)
;  	time	dur	db	freq
