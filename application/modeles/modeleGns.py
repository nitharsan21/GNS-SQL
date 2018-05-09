#!/usr/bin/python
# -*- coding: utf-8 -*-

import mysql.connector



connexionBD = None

def getConnexionBD() :
	global connexionBD
	try :
		if connexionBD == None :
			connexionBD = mysql.connector.connect(
					host = 'localhost' ,
					user = 'root' ,
					password = 'azerty' ,
					database = 'gns'
				)
		return connexionBD
	except :
		return None

def getParties() :
	try :
		curseur = getConnexionBD().cursor()
		
		requete = '''
					select numeroPartie, dateCreation , initiateur, i.nomJoueur, ci.nomCouleur, adversaire ,a.nomJoueur, ca.nomCouleur, suivant, vainqueur
					from Partie p 
					left outer join Joueur i 
					on i.numeroJoueur = p.initiateur 				
					left outer join Joueur a 
					on a.numeroJoueur = p.adversaire
					left outer join Couleur ci
					on ci.numeroCouleur = p.couleurInitiateur
					left outer join Couleur ca
					on ca.numeroCouleur = p.couleurAdversaire
				'''
		
		curseur.execute( requete , () )
		
		enregistrements = curseur.fetchall()
		
		partie = []
		for unEnregistrement in enregistrements :
			unPersonnel = {}
			unPersonnel[ 'numeroPartie' ] = unEnregistrement[ 0 ]
			unPersonnel[ 'dateCreation' ] = unEnregistrement[ 1 ]
			unPersonnel[ 'initiateur' ] = unEnregistrement[ 2 ]
			unPersonnel[ 'NomInitiateur' ] = unEnregistrement[ 3 ]
			unPersonnel[ 'CouleurInitiateur' ] = unEnregistrement[ 4 ]
			unPersonnel[ 'adversaire' ] = unEnregistrement[ 5 ]
			unPersonnel[ 'NomAdversaire' ] = unEnregistrement[ 6 ]
			unPersonnel[ 'CouleurAdversaire' ] = unEnregistrement[ 7 ]
			unPersonnel[ 'suivant' ] = unEnregistrement[ 8 ]
			unPersonnel[ 'vainqueur' ] = unEnregistrement[ 9 ]	
			partie.append( unPersonnel )
			
		curseur.close()
	
		return partie
		
		
	except :
		return None
