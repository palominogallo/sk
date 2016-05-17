#! /usr/bin/python

import sys, subprocess
sys.path.append('/home/palomino/sk/submit_scripts/oa/include')
import ptheta_settings, settings

if len(sys.argv)!= 4:
	print('events,  potnu, potnub')
	exit()

script, events, potnu, potnub = sys.argv
ana, mainoutdir, codedir = ptheta_settings.BASIC()
potneutrino, potantineutrino = settings.POT(potnu, potnub)

subprocess.call(codedir+'/bin/MakeBreakDown' \
		+' -f '   +mainoutdir+ptheta_settings.matrix \
		+' -ft '  +mainoutdir+ptheta_settings.systhrows \
		+' -tnb ' +potnub \
		+' -tnu ' +potnu \
		+' -xe '  +mainoutdir+'/inputs/RFNue/nu_beam/' \
		+' -xmu ' +mainoutdir+'/inputs/RFNuMu/nu_beam/' \
		+' -xbe ' +mainoutdir+'/inputs/RFNue/nubar_beam/' \
		+' -xbmu '+mainoutdir+'/inputs/RFNuMu/nubar_beam/' \
		+' -sf '  +mainoutdir+'/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root' \
		+' -n '   +events \
		#+' -pe '  +mainoutdir+'/inputs/NuePDF/numode_nue_binning_J/' \
		#+' -pe '  +mainoutdir+'/inputs/NuePDF/numode_nue_binning_201/' \
		+' -pe '  +mainoutdir+'/inputs/NuePDF/numode_nue_binning_84/' \
		#+' -pm '  +mainoutdir+'/inputs/NuMuPDF/numode_numu_binning_J.root' \
		#+' -pm '  +mainoutdir+'/inputs/NuMuPDF/numode_numu_binning_201.root' \
		+' -pm '  +mainoutdir+'/inputs/NuMuPDF/numode_numu_binning_84.root' \
		#+' -pbe ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_J/' \
		#+' -pbe ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_201/' \
		+' -pbe ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_84/' \
		#+' -pbm ' +mainoutdir+'/inputs/NuMuPDF/antinu_numu_binning_J.root' \
		#+' -pbm ' +mainoutdir+'/inputs/NuMuPDF/antinu_numu_binning_201.root' \
		+' -pbm ' +mainoutdir+'/inputs/NuMuPDF/antinu_numu_binning_84.root' \
		+' -o '   +mainoutdir+'/'+ana+'/breakdown_nu'+potneutrino+'_nubar'+potantineutrino+'_1p1h.root' \
		, shell=True)

