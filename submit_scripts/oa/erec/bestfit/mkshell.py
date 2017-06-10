#!/usr/bin/python
# 200*5 = 1000 = 199*5 + 5

import sys, os
sys.path.append('/home/palomino/sk/submit_scripts/oa/include')
import erec_settings, settings

ana, mainoutdir, codedir = erec_settings.BASIC()

#nstart = 200
nstart = 0
njobs = 200 + nstart
jobgroups = 5
lastblock = 5

nscript = nstart
n = 0
while nscript < njobs :
    dirname = "%s" % nscript
    if not os.path.exists(dirname):
        os.makedirs(dirname)
    shell_name = "%s/bestfit/%s/bestfit.%s.csh" % (erec_settings.rundir,dirname,nscript)
    n = nscript*jobgroups
    print n

    nbins = jobgroups
    if nscript == njobs - 1:
        nbins = lastblock

    f = open(shell_name,'w')
    f.write("#!/bin/tcsh -f\n\n")
    f.write("# @$-q all\n")
    f.write("# @$-o %s/%s/bestfit/log/bestfit.%s.out\n" % (mainoutdir,ana,nscript) )
    f.write("# @$-e %s/%s/bestfit/log/bestfit.%s.err\n\n" % (mainoutdir,ana,nscript) )
    f.write("setenv ROOTSYS /usr/local/sklib_g77/root_v5.28.00b\n")
    f.write("setenv LD_LIBRARY_PATH  $ROOTSYS/lib\n\n")

    i = n
    while i < n + nbins:
        f.write("%s/bin/BestFit_nu_nubar -f %s/%s" % (codedir,mainoutdir,erec_settings.matrix) )
        f.write(" -sf  %s/%s"             % (mainoutdir,settings.splinef) )
        f.write(" -pe  %s/%s -pm %s/%s"   % (mainoutdir,settings.nuepdf,mainoutdir,settings.numupdf) )
        f.write(" -pbe %s/%s -pbm %s/%s"  % (mainoutdir,settings.nuebpdf,mainoutdir,settings.numubpdf) )
        f.write(" -xe  %s/%s -xmu %s/%s"  % (mainoutdir,settings.nuerf,mainoutdir,settings.numurf))
        f.write(" -xbe %s/%s -xbmu %s/%s" % (mainoutdir,settings.nuebrf,mainoutdir,settings.numubrf))
        f.write(" -d %s/%s/generate/g10k_gbfp_m15_nuR17_nubarR57_s1.root" % (mainoutdir,ana) )
        f.write(" -o %s/%s/bestfit/mc_run17c_5bins_202211/mc_bestfit_%s.root -tnu 0.7482 -tnb 0.7471 -bin %s" % (mainoutdir,ana,i,i) )
        f.write("\n\n")
        i += 1

    f.close()
    nscript += 1
