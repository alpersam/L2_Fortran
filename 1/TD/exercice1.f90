PROGRAM premier_programme

  IMPLICIT NONE
  PRINT *, "La valeur de pi est : ", ACOS(-1.)
  PRINT *, "La racine carrée de 2 est : ", SQRT(2.)
  PRINT *, "La valeur de e est : ", EXP(1.)

END PROGRAM premier_programme

!! g95 -o pprog.x pprog.f90
!! ou bien gfortran
!! puis ./pprog.x