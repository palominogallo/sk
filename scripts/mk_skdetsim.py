#!/usr/bin/python
#f1 cardtemplate
#f2 card for input
#f3 c shell script

import sys, os, random

produname = "muons"
nevents = 500
nfiles = 20
pmin = 230.
pmax = 260.
cardtemplate = "/home/santucci/fiTQun/skdetsim/sk4_odtune.card"
skdetsimscript = "/home/santucci/fiTQun/skdetsim/skdetsim_high.sh" 
scriptsdir = "/home/palomino/test/"
outdir = "/disk/usr2/palomino/test/"
qgroup = "atmpd"

replacements = {'VECT-NEVT':'VECT-NEVT %s' % nevents, \
        'VECT-MOM':'VECT-MOM %s %s' % (pmin,pmax) }
linetemp = ""
os.system("mkdir -p %s/{zbs,log}" % outdir )
for file in range(0, nfiles):
    os.system("mkdir -p %s/%s" %(outdir,file))
    r1 = random.randint(100000000,1000000000)
    r2 = random.randint(100000000,1000000000)
    r3 = random.randint(100000000,1000000000)
    replacements['VECT-RAND'] = 'VECT-RAND %s %s %s 0 0' % (r1,r2,r3)
    f1 = open(cardtemplate, "r")
    cardname = "%s/%s/%s%s.card" % (scriptsdir,file,produname,file) 
    f2 = open(cardname, "w")
    for line in f1:
        linetemp = line
        for src, replace in replacements.iteritems():
            if line.split(" ")[0] == src:
                linetemp = replace
                break
        f2.write( linetemp )
    f3 = open("%s/%s/%s%s.csh" % (scriptsdir,file,produname,file), "w")
    f3.write("#!/bin/tcsh\n")
    f3.write("# \n# Batch mode using NQS \n#\n")
    f3.write("# @\$-o %s/log/%s_%s.out \n" % (outdir,produname,file) )
    f3.write("# @\$-e %s/log/%s_%s.err \n\n" % (outdir,produname,file) )
    f3.write("source "+skdetsimscript+" "+cardname+" "+outdir+"/zbs/"+produname+"_%s.zbs" % file)

    f2.close()
    f1.close()

f4 = open("%s/castjobs.csh" % scriptsdir, "w")
f4.write("#!/bin/tcsh -f\n")
f4.write("set nrun = 0\n")
f4.write("while ($nrun < %s)\n" % nfiles)
f4.write("\tcd $nrun\n" )
f4.write("\tqsub -q %s %s_$nrun.csh\n" % (qgroup,produname) )
f4.write("\tcd -\n")
f4.write("\t@ nrun = $nrun + 1\nend") 
