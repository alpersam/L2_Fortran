PROGRAM integer_real
	
	IMPLICIT NONE
	REAL :: r, r1, r2
	INTEGER :: i, i1, i2
	
	!!!
	i = 14 ; r = i
	PRINT *, 'i = ', i, 'r = ', r !! affichage i=14 r= 14.0
	i = 1999999999 ; r = i
	PRINT *, 'i = ', i, 'r = ', r !! affichage i=1999999999 r= 2E+09
	
	!!!
	i = 0.999 ; PRINT *, 'i = ', i !! affichage i=0
	
	!!!
	r = 7/2 ; PRINT *, 'r = ', r !! affichage r= 3.0
	r = 7./2. ; PRINT *, 'r = ', r !! affichage r= 3.5
	i = 3/4 ; PRINT *, 'i = ', i !! affichage i= 0
	i = 3./4. ; PRINT *, 'i = ', i !! affichage i= 0
	
	!!!
	r1 =7. ; r2 =2. ; PRINT * , 'r1/r2 = ' , r1/r2 !! affichage r1/r2 = 3.5
	r1 =7 ; r2 =2 ; PRINT * , 'r1/r2 = ' , r1/r2 !! affichage r1/r2 = 3.5
	i1 =7 ; i2 =2 ; PRINT * , 'i1/i2 = ' , i1/i2 !! affichage i1/i2 = 3
	i1 =7. ; i2 =2. ; PRINT * , 'i1/i2 = ' , i1/i2 !! affichage i1/i2 = 3
	r1 =7. ; i2 =2 ; PRINT * , 'r1/i2 = ' , r1/i2 !! affichage r1/i2 = 3.5
	
	!!!
	i = 3.14 ; PRINT * , "i = " , i !! affichage i= 3
	i = -3.14 ; PRINT * , "i = " , i !! affichage i= -3
	PRINT * , "FLOOR(3.14) = ", FLOOR(3.14) !! affichage FLOOR(3.14) = 3
	PRINT * , "FLOOR(-3.14) = ", FLOOR(-3.14) !! affichage FLOOR(-3.14) = -4
	PRINT * , "CEILING(3.14) = ", CEILING(3.14) !! affichage CEILING(3.14) = 4
	PRINT * , "CEILING(-3.14) = ", CEILING(-3.14) !! affichage CEILING(-3.14) = 3
	PRINT * , "NINT(3.81) = ", NINT(3.81) !! affichage NINT(3.81) = 3 
	PRINT * , "NINT(-3.81) = ", NINT(-3.81) !! affichage NINT(-3.81) = -4
	!! NINT rounds the argument to the nearest whole number
	
END PROGRAM integer_real