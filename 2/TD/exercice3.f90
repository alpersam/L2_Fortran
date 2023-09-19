PROGRAM sincos
	
	IMPLICIT NONE
	INTEGER :: i
	REAL :: angle
	REAL, PARAMETER :: pi = ACOS(-1.)
	
	DO i = 0, 90, 10
		angle = i * pi / 180 !! car sin et cos prennent des radians comme argument
		PRINT *,  'cos(',i,') = ', cos(angle)
		PRINT *,  'sin(',i,') = ', sin(angle)
	END DO

END PROGRAM sincos
