PROGRAM matrice_affichage

	IMPLICIT NONE
	INTEGER :: n, ok, i,j
	REAL, DIMENSION(:,:), ALLOCATABLE :: A, B, C
	
	PRINT *, "Entrez le valeur de n"
	READ *, n
	
	ALLOCATE(A(n,n), B(n,n), C(2*n,2*n), stat = ok)
	IF(ok /= 0) STOP "Erreur d'allocation !"
	
	DO i = 1, n
		DO j = 1, n
			A(i,j) = i - j
		END DO
	END DO
	
	PRINT *, "Affichage ligne par ligne de la matrice :"
	
	DO i =1 , n
		PRINT "(100F12.6)", A(i,1:n)
	END DO
	
	!! 100 max par ligne, F est nombre decimale, 12 caractères maximum, je vais afficher six 		chiffres après la virgule
	
	PRINT *, "La transposée de la matrice A: "
	
	DO j =1 , n
		PRINT "(100F12.6)", A(1:n,j)
	END DO
	
	PRINT *, "La matrice B : "
	
	DO i = 1, n
		DO j = 1, n
			B(i,j) = (A(i,j)/2)**2
		END DO
	END DO
	
	!! B(1:n,1:n) = (A(1:n,1:n)/2)**2
	!! ou B = (A/2)**2
	!! Si on a écrit (i-j) au lieu de A(i,j) on aurait 0 comme valeur au lieu de 0.25
	
	DO i =1 , n
		PRINT "(100F12.6)", B(i,1:n)
	END DO
	
	C(1:n,1:n) = A
	C(n+1:2*n,1:n) = 2*A
	C(1:n,n+1:2*n) = -2*A
	C(n+1:2*n,n+1:2*n) = -A
	
	PRINT *, "La matrice C : "
	
	DO i =1 , 2*n
		PRINT "(100F12.6)", C(i,1:n*2)
	END DO
	
	DEALLOCATE(A,B,C)
	
END PROGRAM matrice_affichage
