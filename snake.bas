10 HOME
20 SCORE = 0 
30 CX = 40/2 : CY = 24/2 : I = 1 : DIM X(100) : DIM Y(100)
40 X(I) = CX : Y(I) = CY : PX = CX : PY = CY
41 REM PRINT PX
50 FX = INT(RND(1)*40) : FY = INT(RND(1)*40) : HTAB FX : VTAB FY : PRINT "x"
60 GOSUB 2000
70 GOSUB 1000


1000 REM MAIN
1001 K = PEEK(49152)
1002 HTAB 1 : VTAB 1 : PRINT "SCORE " : PRINT SCORE
1003 REM PRINT X(I), PX
1004 PX = X(I) : PY = Y(I)
1040 IF K=196 THEN GOSUB 3000 : GOSUB 7000 : GOSUB 5000 : GOSUB 2000
1050 IF K=193 THEN GOSUB 3000 : GOSUB 8000 : GOSUB 5000 : GOSUB 2000
1060 IF K=215 THEN GOSUB 3000 : GOSUB 9000 : GOSUB 5000 : GOSUB 2000
1070 IF K=211 THEN GOSUB 3000 : GOSUB 10000 : GOSUB 5000 : GOSUB 2000
1090 FOR N = 1 TO 1000 : NEXT N
1100 GOTO 1000

2000 REM CREATE
2010 FOR S = 1 TO I : HTAB X(S) : VTAB Y(S) : PRINT "o" : NEXT S
2020 RETURN

3000 REM DELETE
3010 FOR S = 1 TO I : HTAB X(S) : VTAB Y(S) : PRINT " "
3020 RETURN

4000 REM CREATE NEW FOOD
4009 
4010 FX = INT(RND(1)*40) : FY = INT(RND(1)*24) : HTAB FX : VTAB FY : PRINT "x"
4020 RETURN

5000 REM CHECK FOOD ATE
5010 IF X(I)=FX THEN IF Y(I)=FY THEN GOSUB 4000 : SCORE = SCORE+1 : I = I+1 : X(I) = PX : Y(I) = PY
5020 RETURN


7000 REM 196
7009 
7010 FOR B = 1 TO I : X(B) = X(B)+1 : NEXT B
7020 RETURN

8000 REM 193
8010 FOR B = 1 TO I : X(B) = X(B)-1 : NEXT B
8020 RETURN

9000 REM 215
9010 FOR B = 1 TO I : Y(B) = Y(B)-1 : NEXT B
9020 RETURN

10000 REM 211
10010 FOR B = 1 TO I : Y(B) = Y(B)+1 : NEXT B
10020 RETURN
