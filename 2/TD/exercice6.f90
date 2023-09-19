PROGRAM produit_entiers_intervalle

	IMPLICIT NONE
	
	INTEGER :: a,b,temp, i
	INTEGER(8) :: produit = 1 !! pour éviter le overflow
	
	PRINT *, "Entrez deux entiers a et b avec a < b comme condition"
	READ *, a, b
	
	IF (a > b) THEN
		temp = b
		b = a
		a = temp
	END IF
	
	DO i = a, b !! commence à a et finit à b
		produit = produit * i
	END DO
	
	PRINT *, "La produit entre les entiers ", a, " et ", b, " est: ", produit 

END PROGRAM produit_entiers_intervalle
