#!/bin/csh -f

set nrun = 0
while ($nrun < 52)
 cd $nrun
 qsub -q all fit_sensi.$nrun.csh
 cd -
 set nrun = `expr $nrun + 1`
end

