PROGRAM deux_vecteurs_operation

	IMPLICIT NONE
	INTEGER :: N, ok, i
	REAL :: somme, produit
	REAL, DIMENSION(:), ALLOCATABLE :: V1, V2
	CHARACTER, DIMENSION(:), ALLOCATABLE :: res
	
	PRINT *, "Entrez un valeur N pour le nombre d'éléments des vecteurs"
	READ *, N
	
	ALLOCATE(V1(N), V2(N), res(N), stat = ok)
	IF (ok /= 0) STOP "Erreur d'allocation"
	
	DO i = 1, N
	
		PRINT *, "Saisir l'élément ",i,"de V1:"
		READ *, V1(i)
	
	END DO
	
	DO i = 1, N
	
		PRINT *, "Saisir l'élément ",i,"de V2:"
		READ *, V2(i)
	
	END DO
	
	PRINT *, "La somme élément par élément de V1 : "
	
	somme = 0
	
	DO i = 1, N
			somme = V1(i)+V2(i)
			PRINT *, "V1(",i,") + V2(",i,") = ", somme
	END DO
	
	PRINT *, "Le produit élément par élément de V1 : "
	
	produit = 1
	
	DO i = 1, N
			produit = V1(i)*V2(i)
			PRINT *, "V1(",i,") * V2(",i,") = ", produit
	END DO
	
	PRINT *, "Produit scalaire des deux vecteurs : "
	
	produit = 1
	somme = 0
	
	DO i = 1, N
			produit = V1(i)*V2(i)
			somme = somme + produit
	END DO
	
	PRINT *, somme
	
	PRINT *, "Comparaison des éléments des deux vecteurs : "

	!! DO i = 1, N
		!! IF(V1(i) > V2(i)) THEN 
			!! res(i) = ">"
		!! ELSE IF(V1(i) < V2(i)) THEN 
			!! res(i) = "<"
		!! ELSE 
			!! res(i) = "="
		!! END IF
		!! PRINT *, res(i)
	
	!! END DO
	
	WHERE(V1>V2)
		res = ">"
	END WHERE
	WHERE(V1<V2)
		res = "<"
	END WHERE
	WHERE(V1==V2)
		res = "="
	END WHERE
	
	DO i = 1, N
		PRINT *, res(i)
	END DO

END PROGRAM deux_vecteurs_operation
