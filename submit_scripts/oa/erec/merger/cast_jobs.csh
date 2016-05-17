#!/bin/csh -f

set nrun = 0
#while ($nrun < 199)
#while ($nrun < 101)
while ($nrun < 171)
 cd $nrun
 qsub -q all fit_merger.$nrun.csh
 cd -
 set nrun = `expr $nrun + 1`
end



