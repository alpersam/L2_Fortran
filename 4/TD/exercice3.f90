PROGRAM exercice3

	IMPLICIT NONE
	REAL, DIMENSION(:,:), ALLOCATABLE :: A
	INTEGER :: m,n, i, j, ok
	REAL, DIMENSION(:), ALLOCATABLE :: x, b
	
	PRINT *, "Saisir m et n."
	READ *, m, n
	
	ALLOCATE(A(m,n), x(n), b(m), stat = ok)
	IF ( ok /= 0) STOP "Erreur d'allocation dynamique !"
	
	DO i = 1, m
		x(i) = (i**2)-3*i
		DO j = 1, n
			A(i,j) = ((2/3)*i)+j+(1/3)
		END DO
	END DO
	
	PRINT *, "Matrice A :"
	
	DO i =1 , m
		PRINT * , A(i,1:n)
	END DO
	
	PRINT *, "Vecteur x :"
	
	DO i =1 , n
		PRINT * , x(i)
	END DO
	
	DO i = 1, m
		b(i) = 0
		DO j = 1, n
			b(i) = b(i) + A(i,j)*x(i)
		END DO
	END DO
	
	PRINT *, "Le vecteur Ax = b :"
	
	DO i =1 , m
		PRINT * , b(i)
	END DO
	
	PRINT *, "Test du produit"
	
	b = MATMUL(A,x)
	
	DO i= 1, m
		PRINT *, b(i)
	END DO
	
END PROGRAM exercice3

