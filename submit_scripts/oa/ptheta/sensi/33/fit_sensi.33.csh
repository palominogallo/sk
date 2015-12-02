#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @$-q all
# @$-o /disk/usr2/palomino/Fit2015//ptheta/sensi/log/fit_sensi.33.out
# @$-e /disk/usr2/palomino/Fit2015//ptheta/sensi/log/fit_sensi.33.err

cd /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin

/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Sensi_nu_nubar -f /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -o /disk/usr2/palomino/Fit2015//ptheta/sensi/g10k_delta_s1_m10k_t10k_nuR14_nubarR56/sensi33.root -e /disk/usr2/palomino/Fit2015//ptheta/generate/gen_n10k_m15_nuR14_nubarR56_s1.root -a /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -g 10000 -m 3 -n 10000 -b 33
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Sensi_nu_nubar -f /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -o /disk/usr2/palomino/Fit2015//ptheta/sensi/g10k_delta_s1_m10k_t10k_nu5R14_nubarR56/sensi33.root -e /disk/usr2/palomino/Fit2015//ptheta/generate/gen_n10k_m15_nu5R14_nubarR56_s1.root -a /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -g 10000 -m 3 -n 10000 -b 33
