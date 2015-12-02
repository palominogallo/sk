#Run1-4 GENERATE
source ptheta/runGenPtheta.csh 10000 15 0.657 0.401 1
#5 Run1-4 GENERATE
source ptheta/runGenPtheta.csh 10000 15 3.285 0.401 1

#Run1-4 TEMPLATE
source ptheta/runTempPtheta.csh 10000 0.657 0.401
#5 Run1-4 TEMPLATE
source ptheta/runTempPtheta.csh 10000 3.285 0.401
