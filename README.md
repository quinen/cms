# cms
Content Management System

* initialiser le composer avec quinen\cms
* la premiere version devra être capable de :
  * creer/modifier/afficher/supprimer un article
  * notion de mots cles associés par articles
  * notion de state de publication : brouillon/publié/desactivé/supprimer
  * creer une arborescence de menu avec des dynamisations (articles par mois/année de publication ou par keywords par exemple)
  * gestion des Utilisateurs par Groupes, un utilisateur peux faire partie de plusieurs groupes
  * un groupe = un droit
  * un droit = oui, non ou vide
  * si plusieurs droits alors non ecrase oui et vide, si oui sans non alors oui
* techniquement :
  * respect de tous les PSR
  * l'object article devra etre construit par un generateur de formulaire
  * zero framework
  