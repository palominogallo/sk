#! /usr/bin/python
# based on James I.

import sys, subprocess
sys.path.append('/home/palomino/sk/submit_scripts/oa/include')
import ptheta_settings, settings

ana, mainoutdir, codedir = ptheta_settings.BASIC()
fhc	=  {\
	'0':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numu_x_nue_nueselec.root', \
	'1':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numu_x_numu_nueselec.root', \
	'2':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_nueselec.root', \
	'3':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.nue_x_nue_nueselec.root', \
	'4':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.nuebar_x_nuebar_nueselec.root', \
	'5':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_nuebar_nueselec.root' \
	}

rhc	= {\
	'0':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numu_x_nue_nueselec.root', \
	'1':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numu_x_numu_nueselec.root', \
	'2':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numubar_x_numubar_nueselec.root', \
	'3':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.nue_x_nue_nueselec.root', \
	'4':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.nuebar_x_nuebar_nueselec.root', \
	'5':'t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numubar_x_nuebar_nueselec.root' \
	}

### neutrino mode
for key in fhc:
	subprocess.call(codedir+'/Tools/NueSeed/NueSeed' \
		+' -f ' +mainoutdir+'/inputs/mtuples_cccohwgt_flux5c-6e/FHC/'+fhc[key] \
		+' -o ' +mainoutdir+'/inputs/NuePDF/numode_nue_binning_84_8/' \
		+' -n ' +key \
		+' -m 0' \
		, shell=True)

### antineutrino mode
for key in rhc:
	subprocess.call(codedir+'/Tools/NueSeed/NueSeed' \
		+' -f ' +mainoutdir+'/inputs/mtuples_cccohwgt_flux5c-6e/RHC/'+rhc[key] \
		+' -o ' +mainoutdir+'/inputs/NuePDF/antinu_nue_binning_84_8/' \
		+' -n ' +key \
		+' -m 1'\
		, shell=True)
