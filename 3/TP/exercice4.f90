PROGRAM trajectoire

	IMPLICIT NONE
	REAL, PARAMETER :: u0 = 2, deltat = 0.1, xa = 0, ya = 10, g = 9.81
	INTEGER, PARAMETER :: nmax = 10
	INTEGER :: i = 1, ok, n, j
	REAL, DIMENSION(0:nmax) :: x = xa, y = ya, t = 0, u = u0, v = 0
	REAL, DIMENSION(:,:), ALLOCATABLE :: position_balle
	
	
	DO WHILE ( y(i) > 0 )
	
		v(i) = -deltat * g + v(i-1)
		x(i) = deltat * u(i) + x(i-1)
		y(i) = deltat * v(i) + y(i-1)
		t(i) = t(i-1) + deltat
		i = i + 1
	
	END DO
	
	n = i
	
	ALLOCATE(position_balle(0:n,3), stat = ok)
	IF(ok /= 0) STOP "Erreur d'allocation !"
	
	DO i = 0, n
	
		position_balle(i,1) = t(i)
		position_balle(i,2) = x(i)
		position_balle(i,3) = y(i)
	
	END DO
	
	PRINT *, "ti                 ", "xi               ", "yi                 "
	
	DO i = 0, n
			PRINT *, position_balle(i,1), position_balle(i,2), position_balle(i,3)
	END DO
	
	PRINT *, "Temps de chute: ", t(n-1)
	PRINT *, "La portée: ", x(n-1)
	
END PROGRAM trajectoire
