#!/usr/bin/python

def POT( potnu, potnub):
	if potnu == '0.6570':
		fhc = 'R14'
	elif potnu == '0.6914':
		fhc = 'R16'
	#elif potnu == '0.7414':
	elif potnu == '0.7120':
		fhc = 'R17'
	else:
		fhc = potnu

	if potnub == '0.4011':
		rhc = 'R56'
	#elif potnub == '0.9511':
	elif potnub == '0.8230':
		rhc = 'R57'
	else:
		rhc = potnub

	return fhc, rhc

