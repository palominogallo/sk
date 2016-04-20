#! /usr/bin/python

import sys, subprocess
sys.path.append('/home/palomino/sk/submit_scripts/oa/include')
import erec_settings, settings

if len(sys.argv)!= 6:
	print('events, mode, potnu, potnub, syste')
	exit()

script, events, mode, potnu, potnub, syste = sys.argv

ana, mainoutdir, codedir = erec_settings.BASIC()
potneutrino, potantineutrino = settings.POT(potnu, potnub)

nevents = int(float(events) / 1000)
subprocess.call(codedir+'/bin/GenerateXP' \
		+' -f '   +mainoutdir+erec_settings.matrix \
		+' -pe '  +mainoutdir+'/inputs/NuePDF/numode_nue_binning_J/' \
		+' -pm '  +mainoutdir+'/inputs/NuMuPDF/numode_numu_binning_J.root' \
		+' -pbe ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_J/' \
		+' -pbm ' +mainoutdir+'/inputs/NuMuPDF/antinu_numu_binning_J.root' \
		+' -xe '  +mainoutdir+'/inputs/RFNue/nu_beam/' \
		+' -xmu ' +mainoutdir+'/inputs/RFNuMu/nu_beam/' \
		+' -xbe ' +mainoutdir+'/inputs/RFNue/nubar_beam/' \
		+' -xbmu '+mainoutdir+'/inputs/RFNuMu/nubar_beam/' \
		+' -tnb ' +potnub \
		+' -tnu ' +potnu \
		+' -n '   +events \
		+' -m '   +mode \
		+' -s '   +syste \
		+' -sf '  +mainoutdir+'/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root' \
		+' -o '   +mainoutdir+'/'+ana+'/generate/g'+str(nevents)+'k_m'+mode+'_nu'+potneutrino+'_nubar'+potantineutrino+'_s'+syste+'.root'
		, shell=True)
