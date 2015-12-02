#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @$-q all
# @$-o /disk/usr2/palomino/Fit2015//erec/merger/log/fit_merg.5.out
# @$-e /disk/usr2/palomino/Fit2015//erec/merger/log/fit_merg.5.err

cd /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin

/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//erec/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//erec/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 50 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//erec/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//erec/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 50 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
