#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
use gns;

select * 
from Partie;


select * 
from Partie
where vainqueur != null; 

select * 
from Partie
where vainqueur = null;

select * 
from Partie
where adversaire = null;

 
select * 
from Partie
where vainqueur = 5 
or adversaire = 5
or suivant = 5
or initiateur = 5
;


select * 
from Partie
where vainqueur = 5;

select * 
from Partie
where initiateur = 5
and adversaire = null;


select * 
from Partie
where initiateur = 5
or adversaire = 5
and vainqueur = null;

select * 
from Partie
where suivant = 5;

select * 
from Partie
where initiateur != 5
and adversaire = null;




