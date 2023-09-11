PROGRAM colis_conforme

  IMPLICIT NONE
  REAL :: hauteur, longueur, largeur

  PRINT *, "Entrer les dimensions du colis (en cm): "
  PRINT *, "Hauteur :"
  READ *, hauteur
  PRINT *, "Longueur : "
  READ * , longueur
  PRINT *, "Largeur : "
  READ * , largeur

  IF (hauteur <= largeur .AND. largeur <= longueur) THEN
    IF ((longueur >= 10.0 .AND. largeur >= 7.0) .AND. longueur <= 60.0 .AND. (hauteur+longueur+largeur) <= 100.0) THEN 
        PRINT *, "Le colis est compliant."
    ELSE
        PRINT *, "Le colis n'est pas compliant."
    END IF
  ELSE
    STOP "Les dimensions sont invalides."
  END IF

END PROGRAM colis_conforme