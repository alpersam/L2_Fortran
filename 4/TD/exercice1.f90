PROGRAM nombres_premiers

	IMPLICIT NONE
	INTEGER, PARAMETER :: nmax = 10
	INTEGER, DIMENSION(1:nmax) :: tableau_premiers = (/ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29 /)
	INTEGER :: i, fin, temp
	
	PRINT *, "Ordre normal"
	
	DO i = 1, nmax
		PRINT *, tableau_premiers(i)
	END DO
	
	!! On pourrait utiliser PRINT *,tableau_premiers(:) ou PRINT *, tableau_premiers(1:nmax) aussi
	
	PRINT *, "Ordre inverse"
		
	DO i = 10, 1, -1
		PRINT *, tableau_premiers(i)
	END DO
	
	!! On pourrait utiliser tab(nmax:1:-1)
	
	
	PRINT *, "★ Inversion du tableau ★"
	
	fin = nmax/2
	
	DO i = 1, fin
		temp = tableau_premiers(i)
		tab(i) = tab(nmax-i+1)
		tab(nmax-i+1) = temp
	END DO
	
	!! On pourrait utiliser tab(1:nmax) = tab(nmax:1:-1)

END PROGRAM nombres_premiers
