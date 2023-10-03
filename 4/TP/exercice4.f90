PROGRAM depassement

	IMPLICIT NONE
	
	INTEGER :: n
	REAL, DIMENSION(:), ALLOCATABLE :: tab
	REAL, PARAMETER :: pi = ACOS(-1.)
	INTEGER :: i, ok
	
	PRINT *, "Entrez un entier n"
	READ *, n
	
	ALLOCATE(tab(0:n-1), STAT = ok)
	IF (ok /= 0) STOP "Problème allocation"
	
	DO i = 0, n-1
	
		tab(i) = COS(2*i*pi/n)
	
	END DO
	
	PRINT *, tab

END PROGRAM depassement

!! on a fait commencer le tableau par l'indice 0, or on commençait la boucle de i = 1 à n qui créeait un problème de dépassement
