#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @$-q all
# @$-o /disk/usr2/palomino/Fit2015//ptheta/merger/log/fit_merg.0.out
# @$-e /disk/usr2/palomino/Fit2015//ptheta/merger/log/fit_merg.0.err

cd /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin

/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 0 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 0 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 1 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 1 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 2 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 2 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 3 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 3 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 4 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 4 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 5 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 5 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 6 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 6 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 7 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 7 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 8 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 8 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nuR14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nuR14_nubarR56/ -i 9 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
/home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin/Merger -t /disk/usr2/palomino/Fit2015//ptheta/template/tpl_t10k_nu5R14_nubarR56.root -o /disk/usr2/palomino/Fit2015//ptheta/merger/m10k_delta_t10k_nu5R14_nubarR56/ -i 9 -ft /disk/usr2/palomino/Fit2015//inputs/Throws/Osc_2015_Reac.root -n 10000
