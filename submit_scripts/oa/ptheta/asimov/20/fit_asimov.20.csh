#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @$-q all
# @$-o /disk/usr2/palomino/Fit2015//ptheta/asimov/log/fit_asimov.20.out
# @$-e /disk/usr2/palomino/Fit2015//ptheta/asimov/log/fit_asimov.20.err

cd /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin

/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/SensiAsimov_nu_nubar -f /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -o /disk/usr2/palomino/Fit2015//ptheta/asimov/g10k_delta_s1_m10k_t10k_nuR14_nubarR56/asimov20.root -e /disk/usr2/palomino/Fit2015//ptheta/generate/gen_n10k_m15_nuR14_nubarR56_s1.root -a /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -m 3 -n 10000 -b 20
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/SensiAsimov_nu_nubar -f /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -o /disk/usr2/palomino/Fit2015//ptheta/asimov/g10k_delta_s1_m10k_t10k_nu5R14_nubarR56/asimov20.root -e /disk/usr2/palomino/Fit2015//ptheta/generate/gen_n10k_m15_nu5R14_nubarR56_s1.root -a /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -m 3 -n 10000 -b 20
