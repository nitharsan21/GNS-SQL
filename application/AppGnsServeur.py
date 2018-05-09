#!/usr/bin/python
# -*- coding: utf-8 -*-

from flask import *
from modeles import modeleGns
import json
import datetime


app = Flask( __name__ )
app.secret_key = 'gns'

@app.route( '/partie' , methods = [ 'GET' ] )
def index() :
	lespartie= modeleGns.getParties()
	for i in lespartie:
		print i['dateCreation']
	corpsReponse = json.dumps(modeleGns.getParties())
	reponse = make_response(corpsReponse)
	reponse.mimetype = 'appleication/json'
	reponse.status_code = 200
	return reponse



if __name__ == '__main__' :
	
		lespartie= modeleGns.getParties()
		for i in lespartie:
			print i['dateCreation']

