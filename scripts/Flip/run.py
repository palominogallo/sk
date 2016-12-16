#! /usr/bin/python
import sys, subprocess

nbins = '1701'
nthrows = '10000'

#for n in range(10):
#for n in range(10,15):
#for n in range(15,25):
for n in range(25,30):
    subprocess.call('./Flip -i /disk/usr2/palomino/NuMu16/erec/sepfitter/FC/m10k_201122_t10k_R17c_' + str(n) \
            + ' -o /disk/usr2/palomino/NuMu16/erec/flip/m10k_201122_t10k_R17_FC_' + str(n) + '.root -b ' + nbins \
            + ' -n ' + nthrows, shell=True)
