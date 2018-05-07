#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
use gns;

#------------------------------------------------------------
# Table: Joueur
#------------------------------------------------------------

CREATE TABLE Joueur(
        numeroJoueur Int NOT NULL ,
        nomJoueur    Varchar (25) ,
        mdpJoueur    Varchar (25) ,
        PRIMARY KEY (numeroJoueur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Couleur
#------------------------------------------------------------

CREATE TABLE Couleur(
        numeroJoueur Int NOT NULL ,
        nomJoueur    Varchar (25) ,
        PRIMARY KEY (numeroJoueur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Partie
#------------------------------------------------------------

CREATE TABLE Partie(
        numeroPartie           Int NOT NULL ,
        dateCreation           Date ,
        initiateur           Int ,
        adversaire         Int ,
        vainqueur         Int ,
        suivant         Int ,
        couleurInitiateur   Int ,
        couleurAdversaire   Int ,
        PRIMARY KEY (numeroPartie )
)ENGINE=InnoDB;

ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur FOREIGN KEY (initiateur) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur_1 FOREIGN KEY (adversaire) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur_2 FOREIGN KEY (vainqueur) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur_3 FOREIGN KEY (suivant) REFERENCES Joueur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur_Couleur FOREIGN KEY (couleurInitiateur) REFERENCES Couleur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur_Couleur_4 FOREIGN KEY (couleurAdversaire) REFERENCES Couleur(numeroJoueur);
ALTER TABLE Partie ADD CONSTRAINT FK_Partie_numeroJoueur_3 FOREIGN KEY (suivant) REFERENCES Joueur(numeroJoueur);





insert into Joueur values(1,'Nicolas','azerty');
insert into Joueur values(2,'Ilona','azerty');
insert into Joueur values(3,'Georges','azerty');
insert into Joueur values(4,'Aîcha','azerty');
insert into Joueur values(5,'Cody','azerty');


insert into Couleur values(1,'Blanc');
insert into Couleur values(2,'Noir');


insert into Partie values(1,'01/05/2018',5,2,2,null,1,2);
insert into Partie values(2,'01/05/2018',5,2,5,null,2,1);
insert into Partie values(3,'01/05/2018',5,null,null,5,1,null);
insert into Partie values(4,'01/05/2018',2,null,null,null,2,null);
insert into Partie values(5,'02/05/2018',5,1,null,1,1,2);
insert into Partie values(6,'02/05/2018',5,1,null,5,1,2);
insert into Partie values(7,'02/05/2018',1,null,null,null,null,2);
insert into Partie values(8,'02/05/2018',1,null,null,null,null,2);
insert into Partie values(9,'03/05/2018',5,2,null,2,1,2);
insert into Partie values(10,'03/05/2018',2,1,2,null,2,1);

