#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
use gns;

select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire;


select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where vainqueur is not null; 

select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where vainqueur is null;

select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where adversaire is null;

 
select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where vainqueur = 5 
or adversaire = 5
or suivant = 5
or initiateur = 5;


select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where vainqueur = 5;

select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where initiateur = 5
and adversaire is null;


select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where initiateur = 5
or adversaire = 5
and vainqueur is null;

select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where suivant = 5;

select numeroPartie, dateCreation , i.nomJoueur, ci.nomCouleur ,a.nomJoueur, ca.nomCouleur, s.nomJoueur, v.nomJoueur 
from Partie p 
left outer join Joueur i 
on i.numeroJoueur = p.initiateur 
left outer join Joueur a 
on a.numeroJoueur = p.adversaire 
left outer join Joueur s 
on s.numeroJoueur = p.suivant 
left outer join Joueur v 
on v.numeroJoueur = p.vainqueur 
left outer join Couleur ci 
on ci.numeroCouleur = p.couleurInitiateur 
left outer join Couleur ca 
on ca.numeroCouleur = p.couleurAdversaire
where initiateur != 5
and adversaire is null;




