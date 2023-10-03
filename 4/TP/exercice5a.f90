PROGRAM vecteur_operations

	IMPLICIT NONE
	INTEGER :: N, ok, i, choix,  sortie = 0
	REAL :: somme, produit, norme
	REAL, DIMENSION(:), ALLOCATABLE :: V1
	
	
	PRINT *, "Entrez un valeur N pour le nombre d'éléments du vecteur"
	READ *, N
	
	ALLOCATE(V1(N), stat = ok)
	IF (ok /= 0) STOP "Erreur d'allocation"
	
	DO i = 1, N
	
		PRINT *, "Saisir l'élément ",i,":"
		READ *, V1(i)
	
	END DO
	
	DO WHILE (sortie == 0)
	
		PRINT *, "Quel opération voulez vous faire ?"
		PRINT *, "'1': somme, '2': produit, '3': norme 1,'4': norme 2, '5': norme infinie, '6': sortie"
		READ *, choix
		
		SELECT CASE(choix)
			
			CASE(1)
				somme = 0
				DO i = 1, N
					somme = somme + V1(i)
				END DO
				PRINT *, "La somme des éléments est :", somme
			
			CASE(2)
				produit = 1
				DO i = 1, N
					produit = produit * V1(i)
				END DO
				PRINT *, "Le produit des éléments est :", produit
				
			CASE(3)
				norme = 0
				DO i = 1, N
					norme = norme + ABS(V1(i))
				END DO
				PRINT *, "La norme 1 est :", norme
				
			CASE(4)
				norme = 0
				DO i = 1, N
					norme = norme + (V1(i)**2)
				END DO
				norme = SQRT(norme)
				PRINT *, "La norme 2 est :", norme
				
			CASE(5)
				norme = MAXVAL(V1)
				PRINT *, "La norme infinie est :", norme
			
			CASE(6)
				sortie = 1
			
			CASE DEFAULT
				PRINT *, "Saisie incorrecte, veuillez réessayer."
				
		END SELECT
		
	END DO
	
END PROGRAM vecteur_operations
