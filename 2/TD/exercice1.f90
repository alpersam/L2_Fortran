PROGRAM mention

  IMPLICIT NONE
  REAL :: x

  PRINT *, "Entrez votre note : "
  READ *, x

  IF(x < 0 .OR. x > 20) THEN 
    PRINT *, "Saisie incorrecte !"
  ELSE IF (x < 10) THEN
    PRINT *, "Non admis(e)"
  ELSE IF (x < 12) THEN
    PRINT *, "Passable"
  ELSE IF (x < 14) THEN
    PRINT *, "Assez bien"
  ELSE IF (x < 16) THEN
    PRINT *, "Bien"
  ELSE IF (x < 18) THEN
    PRINT *, "Trés bien"
  ELSE IF (x <= 20) THEN 
    PRINT *, "Félicitations !!!"
  END IF

END PROGRAM mention