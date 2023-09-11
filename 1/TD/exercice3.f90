PROGRAM calculatrice_clavier

  IMPLICIT NONE
  REAL :: premier_nombre, deuxieme_nombre, somme

  PRINT *, "Entrez a et b"
  READ *, premier_nombre, deuxieme_nombre

  somme = premier_nombre + deuxieme_nombre

  PRINT *, "Premier nombre : ", premier_nombre
  PRINT *, "Deuxième nombre : " , deuxieme_nombre
  PRINT *, "La somme est : ", somme

  IF (somme < 0) THEN
    PRINT *, "La somme est négative."
  ELSE
    PRINT *, "La somme est positive."
  END IF

END PROGRAM calculatrice_clavier