PROGRAM somme_entiers_intervalle

	IMPLICIT NONE
	
	INTEGER :: a,b,temp, i, somme = 0
	
	PRINT *, "Entrez deux entiers a et b avec a < b comme condition"
	READ *, a, b
	
	IF (a > b) THEN
		temp = b
		b = a
		a = temp
	END IF
	
	DO i = a, b !! commence à a et finit à b
		somme = somme + i
	END DO
	
	PRINT *, "La somme entre les entiers ", a, " et ", b, " est: ", somme

END PROGRAM somme_entiers_intervalle
