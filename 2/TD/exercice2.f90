PROGRAM detecteur

  IMPLICIT NONE
  CHARACTER :: c, converti

  PRINT *, "Entrez la caractère."
  READ *, c

  SELECT CASE(c)
    CASE('0':'9')
      PRINT *, "C'est un chiffre"
    CASE('a':'z')
      PRINT *, "C'est une lettre miniscule"
    CASE('A':'Z')
      PRINT *, "C'est une lettre majuscule"
    CASE DEFAULT
      PRINT *, "Ce n'est ni un chiffre ni un lettre"
  END SELECT

END PROGRAM detecteur
