#** GENERATE
#source ptheta/runGenPtheta.csh 10000 15 0.6914 0.4011 1

#** TEMPLATE
#source ptheta/runTempPtheta.csh 10000 0.6914 0.4011

#** MAKEBREAKDOWN
#python ptheta/runMakeBreakDown.py 0 0.6914 0.4011
#python ptheta/runMakeBreakDown.py 0 0.7120 0.8230 

#** TESTER2015
#source ptheta/runTester2015Ptheta.csh 50000

#** MAKEHISTS
#python ptheta/runMakeHists.py 0.6914 0.4011
python ptheta/runMakeHists.py 0.7002 0.7471
