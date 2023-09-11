PROGRAM ex2

  IMPLICIT NONE
  REAL :: a =0 , b=0, somme
  PRINT *, 'Entrez le premier réel'
  READ *, a
  PRINT *, 'a = ', a
  PRINT *, 'Entrez le second réel'
  READ *, b
  PRINT *, 'b = ' , b
  somme=a+b
  PRINT *, 'a + b= ' , somme
  IF (somme >= 0) THEN
      PRINT *, 'Somme positive (ou nulle)'
  ELSE
      PRINT *, 'Somme negative'
  END IF

END PROGRAM ex2