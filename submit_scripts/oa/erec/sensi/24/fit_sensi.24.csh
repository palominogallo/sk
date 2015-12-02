#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @$-q all
# @$-o /disk/usr2/palomino/Fit2015//erec/sensi/log/fit_sensi.24.out
# @$-e /disk/usr2/palomino/Fit2015//erec/sensi/log/fit_sensi.24.err

cd /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin

/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Sensi_nu_nubar -f /disk/usr2/palomino/Fit2015//erec/merger/m10k_delta_t10k_nuR14_nubarR56/ -o /disk/usr2/palomino/Fit2015//erec/sensi/g10k_delta_s1_m10k_t10k_nuR14_nubarR56/sensi24.root -e /disk/usr2/palomino/Fit2015//erec/generate/gen_n10k_m15_nuR14_nubarR56_s1.root -a /disk/usr2/palomino/Fit2015//erec/template/tpl_t10k_nuR14_nubarR56.root -g 10000 -m 3 -n 10000 -b 24
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Sensi_nu_nubar -f /disk/usr2/palomino/Fit2015//erec/merger/m10k_delta_t10k_nu5R14_nubarR56/ -o /disk/usr2/palomino/Fit2015//erec/sensi/g10k_delta_s1_m10k_t10k_nu5R14_nubarR56/sensi24.root -e /disk/usr2/palomino/Fit2015//erec/generate/gen_n10k_m15_nu5R14_nubarR56_s1.root -a /disk/usr2/palomino/Fit2015//erec/template/tpl_t10k_nu5R14_nubarR56.root -g 10000 -m 3 -n 10000 -b 24
