#!/usr/bin/python
import subprocess

#nstart = 200
nstart = 0
njobs = 200

nrun = nstart
while nrun < njobs + nstart :
    subprocess.call("qsub -q all "+str(nrun)+"/bestfit."+str(nrun)+".csh", shell=True)
    nrun +=1
