0010	REM toggles P1.0 once per second
0015 REM change line 50 for other timing
0020	TIME=0
30	CLOCK 1
40	DO 
50	ONTIME 1,100
60	WHILE 1=1
70	END 
100	REM reset time
110	TIME=0
120	REM toggle Port 1, bit 0
130	PORT1=PORT1.XOR.01H
140	PRINT "Port 1, bit 0 = ",(PORT1.AND.01H)/80H
150	RETI
