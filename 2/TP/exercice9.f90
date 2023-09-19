PROGRAM calculatrice_simple

	IMPLICIT NONE
	INTEGER :: a, b, res
	CHARACTER :: car
	
	PRINT *, "Entrez deux entiers a et b"
	READ *, a, b
	PRINT *, "Entrez l'operateur que vous voulez utiliser pour le calcul."
	READ *, car
	
	SELECT CASE(car)
		CASE("+") 
			res = a + b
		CASE("-") 
			res = a - b
		CASE("*") 
			res = a * b
		CASE(":") 
			IF (b /= 0) THEN
				res = a / b
			ELSE
				PRINT *, "Division par zero"
			END IF
		CASE DEFAULT
			PRINT *, "Opérateur inconnu"
	END SELECT
	
	PRINT *, "Resultat : ", res

END PROGRAM calculatrice_simple
