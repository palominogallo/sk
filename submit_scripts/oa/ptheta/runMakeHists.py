#! /usr/bin/python

import sys, subprocess
sys.path.append('/home/palomino/sk/submit_scripts/oa/include')
import ptheta_settings, settings

if len(sys.argv)!= 3:
	print(' potnu, potnub')
	exit()

script, potnu, potnub = sys.argv
ana, mainoutdir, codedir = ptheta_settings.BASIC()
potneutrino, potantineutrino = settings.POT(potnu, potnub)

subprocess.call(codedir+'/bin/MakeHists' \
		+' -f '   +mainoutdir+ptheta_settings.matrix \
		+' -pe '  +mainoutdir+'/inputs/NuePDF/numode_nue_binning_84_r17b/' \
		+' -pm '  +mainoutdir+'/inputs/NuMuPDF/numode_numu_binning_84_r17b.root' \
		+' -pbe ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_84_r57b/' \
		+' -pbm ' +mainoutdir+'/inputs/NuMuPDF/antinu_numu_binning_84_r57b.root' \
		+' -xe '  +mainoutdir+'/inputs/RFNue/nu_beam/' \
		+' -xmu ' +mainoutdir+'/inputs/RFNuMu/nu_beam/' \
		+' -xbe ' +mainoutdir+'/inputs/RFNue/nubar_beam/' \
		+' -xbmu '+mainoutdir+'/inputs/RFNuMu/nubar_beam/' \
		+' -tnb ' +potnub \
		+' -tnu ' +potnu \
		+' -sf '  +mainoutdir+'/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root' \
		+' -d '   +mainoutdir+'/inputs/Data/data_Run1-7.root' \
		+' -ex '  +'0' \
		+' -o '   +mainoutdir+'/'+ana+'/hists_nu'+potneutrino+'_nubar'+potantineutrino+'_1p1h.root' \
		, shell=True)

