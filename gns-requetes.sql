#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
use gns;

select * 
from Partie;


select * 
from Partie
where vainqueur is not null; 

select * 
from Partie
where vainqueur is null;

select * 
from Partie
where adversaire is null;

 
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
and adversaire is null;


select * 
from Partie
where initiateur = 5
or adversaire = 5
and vainqueur is null;

select * 
from Partie
where suivant = 5;

select * 
from Partie
where initiateur != 5
and adversaire is null;




