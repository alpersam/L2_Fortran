PROGRAM definir_pi

  IMPLICIT NONE
  REAL, PARAMETER :: pi = ACOS(-1.0)
  REAL :: rayon, resultat

  rayon = 10.
  resultat = pi * (rayon**2)

  PRINT *, resultat

END PROGRAM definir_pi

!! i -> n entiers
!! autres lettres: réelles
!! mais on rénonce tout ça avec IMPLICIT NONE