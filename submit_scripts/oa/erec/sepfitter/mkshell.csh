#!/bin/csh 
# 101*51  = 5151 = 198*26 + 3
# 51*51   = 2601 = 100*26 + 1

set ana = erec

set exedir = /home/palomino/ptheta/P-theta/Minimal/bin
set rundir = /home/palomino/sk/submit_scripts/oa/$ana/sepfitter
set iodir  = /disk/usr2/palomino/NuMu16/
set logdir = $iodir/$ana/sepfitter/log

set nrun = 0
set n = 0
while ($nrun < 199)

	set dname = "$nrun"
	if ( -d $dname ) then
		rm -rf $dname
		mkdir $dname
	else
		mkdir $dname
	endif

	set shell_name = $rundir/$dname/fit_sepfitter.$nrun.csh
	@ n = $nrun * 26
	echo $n 

if ( $nrun == 198 ) then
	set nbins = 3
else
	set nbins = 26
endif

cat >! $shell_name <<EOF
#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @\$-q all
# @\$-o $logdir/fit_sep.$nrun.out
# @\$-e $logdir/fit_sep.$nrun.err

cd $exedir

EOF

set i = $n

while ( $i < $n + $nbins )
	echo $exedir/SepFitter -a $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -f $iodir/$ana/merger/m10k_202211_t10k_nuR16_nubarR56/ \
		-e $iodir/inputs/Data/data_Run1-6.root -n 10000 -g 1 -b $i -o $iodir/$ana/sepfitter/m10k_202211_t10k_R16/sepfitter$i.root >> $shell_name
	echo $exedir/SepFitter -a $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -f $iodir/$ana/merger/m10k_202211_t10k_nuR16_nubarR56_h/ \
		-e $iodir/inputs/Data/data_Run1-6.root -n 10000 -g 1 -b $i -o $iodir/$ana/sepfitter/m10k_202211_t10k_R16_h/sepfitter$i.root >> $shell_name
	echo $exedir/SepFitter -a $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -f $iodir/$ana/merger/m10k_201122_t10k_nuR16_nubarR56/ \
		-e $iodir/inputs/Data/data_Run1-6.root -n 10000 -g 1 -b $i -o $iodir/$ana/sepfitter/m10k_201122_t10k_R16/sepfitter$i.root >> $shell_name
	echo $exedir/SepFitter -a $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -f $iodir/$ana/merger/m10k_201122_t10k_nuR16_nubarR56_h/ \
		-e $iodir/inputs/Data/data_Run1-6.root -n 10000 -g 1 -b $i -o $iodir/$ana/sepfitter/m10k_201122_t10k_R16_h/sepfitter$i.root >> $shell_name
	set i = `expr $i + 1`
end

set nrun = `expr $nrun + 1`

end

