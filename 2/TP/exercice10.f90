PROGRAM solution_dichotomie
	IMPLICIT NONE
	INTEGER :: g = 0, d = 1000, m
	CHARACTER :: reponse
	
	PRINT *, "Coucou ma belle, retiens un nombre entre 0 et 1000, Et clique n'importe quel bouton pour qu'on commence"
	READ *,
	
	DO WHILE (g <= d)
		m = (g+d)/2
		PRINT *, "Est-ce ton nombre égale à ", m, "? Si oui, clique O, sinon N"
		READ *, reponse
		
		IF (reponse == 'O' .OR. reponse == 'o') THEN
			PRINT *, "NOMBRE TROUVÉ WOOHOOOOOO" 
			STOP
		ELSE
			PRINT *, "Est-ce ton nombre inférieur à ", m, "? Si oui, clique O, sinon N"
			READ *, reponse
			IF (reponse == 'O' .OR. reponse == 'o') THEN
				d = m - 1
			ELSE
				g = m + 1
			END IF
		END IF
	END DO

END PROGRAM solution_dichotomie
