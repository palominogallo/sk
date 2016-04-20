#!/usr/bin/python

def POT( potnu, potnub):
	if potnu == '0.6570':
		potneu = 'R14'
	elif potnu == '0.6914':
		potneu = 'R16'
	elif potnu == '0.7414':
		potneu = 'R17'
	else:
		potneu = potnu

	if potnub == '0.4011':
		potneub = 'R56'
	elif potnub == '0.9511':
		potneub = 'R57'
	else:
		potneub = potnub

	return potneu, potneub

