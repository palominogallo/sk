#! /usr/bin/python

import sys, subprocess
sys.path.append('/home/palomino/sk/submit_scripts/oa/include')
import erec_settings, settings

if len(sys.argv)!= 4:
	print('events,  potnu, potnub')
	exit()

script, events, potnu, potnub = sys.argv
ana, mainoutdir, codedir = erec_settings.BASIC()
potneutrino, potantineutrino = settings.POT(potnu, potnub)

nevents = int(float(events) / 1000)
subprocess.call(codedir+'/bin/MakeTemplate' \
		+' -f '   +mainoutdir+erec_settings.matrix \
		+' -pe '  +mainoutdir+'/inputs/NuePDF/numode_nue_binning_84/' \
		+' -pm '  +mainoutdir+'/inputs/NuMuPDF/numode_numu_binning_84.root' \
		+' -pbe ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_84/' \
		+' -pbm ' +mainoutdir+'/inputs/NuMuPDF/antinu_numu_binning_84.root' \
		+' -xe '  +mainoutdir+'/inputs/RFNue/nu_beam/' \
		+' -xmu ' +mainoutdir+'/inputs/RFNuMu/nu_beam/' \
		+' -xbe ' +mainoutdir+'/inputs/RFNue/nubar_beam/' \
		+' -xbmu '+mainoutdir+'/inputs/RFNuMu/nubar_beam/' \
		+' -tnb ' +potnub \
		+' -tnu ' +potnu \
		+' -n '   +events \
		+' -sf '  +mainoutdir+'/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root' \
		+' -ft '  +mainoutdir+erec_settings.systhrows \
		+' -o '   +mainoutdir+'/'+ana+'/template/tpl_t'+str(nevents)+'k_nu'+potneutrino+'_nubar'+potantineutrino+'.root' \
		, shell=True)
