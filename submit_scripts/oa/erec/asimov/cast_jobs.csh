#!/bin/csh -f

set nrun = 0
while ($nrun < 171) #delta vs theta23
#while ($nrun < 111) #delta
#while ($nrun < 183) #theta23
 cd $nrun
 qsub -q all fit_asimov.$nrun.csh
 cd -
 set nrun = `expr $nrun + 1`
end

