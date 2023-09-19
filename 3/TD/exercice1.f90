PROGRAM exercice_1

  IMPLICIT NONE
  INTEGER, PARAMETER :: n_comp = 3
  REAL, DIMENSION(3) :: u, v, w
  INTEGER :: i
  REAL :: val_saisie, norme_euclidienne

  DO i=1,n_comp !! Saisir la vecteur u
    PRINT *, "Saisi de la ", i, "ème composante de la vecteur u"
    READ *, val_saisie
    u(i) = val_saisie
  END DO

  DO i=1,n_comp !! Saisir la vecteur v
    PRINT *, "Saisi de la ", i, "ème composante de la vecteur v"
    READ *, val_saisie
    v(i) = val_saisie
  END DO

  DO i=1,n_comp !! Créer la vecteur w et l'afficher
    w(i) = u(i) + v(i)
    PRINT *, w(i)
  END DO

  !! Calculer et afficher la norme euclidienne
  norme_euclidienne = SQRT(w(1)**2+w(2)**2+w(3)**2)
  PRINT *, norme_euclidienne 

  !! Normalisation de w et affichage (division de chaque élement par la norme euclidienne)
  DO i=1,n_comp
    w(i) = w(i) / norme_euclidienne
    PRINT *, w(i)
  END DO

END PROGRAM exercice_1