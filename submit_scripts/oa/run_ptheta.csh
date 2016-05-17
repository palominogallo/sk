#** GENERATE
#source ptheta/runGenPtheta.csh 10000 15 0.657 0.401 1

#** TEMPLATE
#source ptheta/runTempPtheta.csh 10000 0.657 0.401

#** MAKEBREAKDOWN
python ptheta/runMakeBreakDown.py 0 0.6914 0.4011
python ptheta/runMakeBreakDown.py 0 0.7120 0.8230 
