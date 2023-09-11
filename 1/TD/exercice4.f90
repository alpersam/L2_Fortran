PROGRAM valeur_absolue

  IMPLICIT NONE
  REAL :: x

  READ *, x

  IF (x<0) x = -x

  PRINT *, "La valeur absolue du nombre saisi est: ", x

END PROGRAM valeur_absolue