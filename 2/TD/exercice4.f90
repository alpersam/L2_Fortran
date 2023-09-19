PROGRAM saisi_entier

	IMPLICIT NONE
	INTEGER :: nombre
	
	DO
		PRINT *, "Saisissez un nombre entier compris entre 0 et 20."
		READ *, nombre
		
		IF (nombre >= 0 .AND. nombre <= 20) THEN
			EXIT
		ELSE
			PRINT *, "Saisie fausse, veuillez re-entrer le nombre."
		END IF
	END DO
		
	PRINT *, "Nombre saisie : ", nombre

END PROGRAM saisi_entier
