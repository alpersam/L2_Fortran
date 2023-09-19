PROGRAM npm

	INTEGER :: i, n, m, res
	PRINT *, "Entrer n entier positif"
	READ *, n
	IF (n < 0) STOP "n est négatif"
	PRINT *, "Entrer m entier positif"
	READ *, m
	IF (m < 0) STOP "m est négatif"
	
	IF (n==0) THEN
		IF (m == 0) STOP "résultat indefini !"
		res = 0
	ELSE
		res = 1
		DO i = 1, m
			res = res*n
		END DO
	END IF
	
	PRINT *, "resultat : ", res

END PROGRAM npm

!! 1'den m'ye kadarki entier'lerin n sayisiyla carpimi
