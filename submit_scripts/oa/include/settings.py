#!/usr/bin/python

def POT( potnu, potnub):
	if potnu == '0.6570':
		fhc = 'R14'
	elif potnu == '0.6914':
		fhc = 'R16'
	elif potnu == '0.7002':
		fhc = 'R17'
	elif potnu == '0.7482':
		fhc = 'R17c'
	elif potnu == '3.9000':
		fhc = 'ALL'
	else:
		fhc = potnu

	if potnub == '0.4011':
		rhc = 'R56'
	elif potnub == '0.7471':
		rhc = 'R57'
	elif potnub == '3.9000':
		rhc = 'ALL'
	else:
		rhc = potnub

	return fhc, rhc

