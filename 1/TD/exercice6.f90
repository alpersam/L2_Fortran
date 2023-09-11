PROGRAM equation_second_degre

  IMPLICIT NONE
  REAL :: a,b,c
  REAL :: discriminant, x1, x2

  PRINT *, "Entrez les coefficients a,b,c"
  READ *, a
  READ *, b
  READ *, c

  IF (a== 0) THEN
      IF (b==0) THEN
          IF (c==0) THEN
              PRINT *, "Solutions infinies"
          ELSE
              PRINT *, "Pas de solutions"
          END IF
      ELSE
          x1 = -c/b
          PRINT *, "Une solution : ", x1
      END IF
  ELSE
      discriminant = b**2 - 4*a*c
      IF (discriminant > 0) THEN
          x1 = (-b + SQRT(discriminant)) / (2*a)
          x2 = (-b - SQRT(discriminant)) / (2*a)
          PRINT *, "Deux solutions réelles : ", x1, x2
      ELSE IF (discriminant < 1.E-6) THEN
          x1 = -b / (2*a)
          PRINT *, "Une solution réelle : ", x1
      ELSE
          PRINT *, "x1 = ", -b / (2*a),"+",SQRT(-discriminant)
          PRINT *, "x2 = ", -b / (2*a),"+",SQRT(-discriminant)
      END IF
  END IF
            
END PROGRAM equation_second_degre

!! Les différents cas à considerer :
!! si a = 0 et b \= 0 alors équation linéaire
!! si a = 0 et b = 0 alors pas de solutions si c \= 0 ou solutions infinies si c = 0
!! si a \= 0 et b²-4ac positive, alors deux solutions réelles
!! si a \= 0 et b²-4ac negative, alors deux solutions complexes
!! si a = 0 et b = 0 et c = 0, alors solutions infinies