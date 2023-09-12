PROGRAM cramer

	IMPLICIT NONE
	
	REAL :: a,b,c,d,e,f,denominateur,x,y
	
	PRINT *, "Entrez les constantes de votre équation linéaire: "
	READ *, a,b,c,d,e,f
	
	denominateur = (a*d)-(b*c)
	
	IF(denominateur /= 1.E-6) THEN
		x = ((c*d)-(f*b)) / denominateur
		y = ((a*f)-(e*c)) / denominateur
		PRINT *, "x = ", x
		PRINT *, "y = ", y
	ELSE
		PRINT *, "Denominateur 0, le calcul du règle est impossible."
	END IF

END PROGRAM cramer