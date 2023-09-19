PROGRAM occurence_impaire

	IMPLICIT NONE
	INTEGER :: nombre, impairs = 0
	
	DO
		PRINT *, "Entrer un entier non nul. (0 pour sortir)"
		READ *, nombre
		IF (nombre == 0) EXIT
		IF(mod(nombre,2) /= 0) impairs = impairs + 1
	END DO
	
	PRINT *, "Le nombre des entiers impaires :", impairs

END PROGRAM occurence_impaire
