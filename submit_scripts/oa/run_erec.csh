#** GENERATE
#python erec/runGenErec.py 10000 15 0.6914 0.4011 1
#python erec/runGenErec.py 10000 15 0.7002 0.7471 1
#python erec/runGenErec.py 10000 15 0.7482 0.7471 1
python erec/runGenErec.py 10000 15 3.9000 3.9000 1

# GENERATE no sys
#python erec/runGenErec.py 10000 15 0.6914 0.4011 0
#python erec/runGenErec.py 10000 15 0.7002 0.7471 0

#** TEMPLATE
#python erec/runTempErec.py 10000 0.6914 0.4011
#python erec/runTempErec.py 10000 0.7002 0.7471
#python erec/runTempErec.py 10000 0.7482 0.7471
python erec/runTempErec.py 10000 3.9000 3.9000

# TEMPLATE no sys
#python erec/runTempErec.py 0 0.6914 0.4011
#python erec/runTempErec.py 0 0.7002 0.7471

#** BESTFIT
#python erec/runBestFitErec.py 0.6914 0.4011
#python erec/runBestFitErec.py 0.7002 0.7471
#python erec/runBestFitErec.py 0.7482 0.7471

#** TESTER2015
#source erec/runTester2015Erec.csh 50000
