#!/bin/csh -f

set nrun = 0
while ($nrun < 6)
 cd $nrun
 qsub -q all fit_merger.$nrun.csh
 cd -
 set nrun = `expr $nrun + 1`
end



