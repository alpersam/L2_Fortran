PROGRAM colis_conforme

  IMPLICIT NONE
  REAL :: hauteur
  REAL :: longueur
  REAL :: largeur

  PRINT *, "Entrer les dimensions du colis (en cm): "
  PRINT *, "Hauteur :"
  READ *, hauteur
  PRINT *, "Longueur : "
  READ * , longueur
  PRINT *, "Largeur : "
  READ * , largeur

  IF (hauteur <= longueur .AND. longueur <= largeur) THEN
      IF (longueur >= 10.0 .AND. largeur >= 60.0 .AND. (hauteur+longueur+largeur) <= 100.0) THEN 
          PRINT *, "Le colis est compliant."
      ELSE
          PRINT *, "Le colis n'est pas compliant."
      END IF
  ELSE
      PRINT *, "Les dimensions sont invalides."
  END IF

END PROGRAM colis_conforme