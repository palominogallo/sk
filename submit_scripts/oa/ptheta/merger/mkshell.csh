#!/bin/csh 

set ana = ptheta

set exedir = /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin
set rundir = /home/palomino/sk/submit_scripts/oa/$ana/merger
set iodir  = /disk/usr2/palomino/Fit2015/
set logdir = $iodir/$ana/merger/log

set nrun = 0
set n = 0
while ($nrun < 6)

	set dname = "$nrun"
	if ( -d $dname ) then
		rm -rf $dname
		mkdir $dname
	else
		mkdir $dname
	endif

	set shell_name = $rundir/$dname/fit_merger.$nrun.csh
	@ n = $nrun * 10
	echo $n 

if ( $nrun == 5 ) then
	set nbins = 1
else
	set nbins = 10
endif

cat >! $shell_name <<EOF
#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @\$-q all
# @\$-o $logdir/fit_merg.$nrun.out
# @\$-e $logdir/fit_merg.$nrun.err

cd $exedir

EOF

set i = $n

while ( $i < $n + $nbins )

	echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR14_nubarR56.root -o $iodir/$ana/merger/m10k_delta_t10k_nuR14_nubarR56/ \
		-i $i -ft $iodir/inputs/Throws/Osc_2015_Reac.root -n 10000 >> $shell_name
	echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nu5R14_nubarR56.root -o $iodir/$ana/merger/m10k_delta_t10k_nu5R14_nubarR56/ \
		-i $i -ft $iodir/inputs/Throws/Osc_2015_Reac.root -n 10000 >> $shell_name
		#echo $exedir/Merger -t $iodir/$ana/template/tpl_t15k_nuR14_nubarR56.root -o $iodir/$ana/merger/m15k_delta_t15k_nuR14_nubarR56/ \
			#-i $i -ft $iodir/inputs/Throws/Osc_2015_Reac.root -n 15000 >> $shell_name
		#echo $exedir/Merger -t $iodir/$ana/template/tpl_t15k_nu5R14_nubarR56.root -o $iodir/$ana/merger/m15k_delta_t15k_nu5R14_nubarR56/ \
			#-i $i -ft $iodir/inputs/Throws/Osc_2015_Reac.root -n 15000 >> $shell_name
			#echo $exedir/Merger -t $iodir/$ana/template/tpl_t20k_nuR14_nubarR56.root -o $iodir/$ana/merger/m20k_delta_t20k_nuR14_nubarR56/ \
				#-i $i -ft $iodir/inputs/Throws/Osc_2015_Reac.root -n 20000 >> $shell_name
				#echo $exedir/Merger -t $iodir/$ana/template/tpl_t20k_nu5R14_nubarR56.root -o $iodir/$ana/merger/m20k_delta_t20k_nu5R14_nubarR56/ \
					#-i $i -ft $iodir/inputs/Throws/Osc_2015_Reac.root -n 20000 >> $shell_name
	#echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR14_nubarR56.root -o $iodir/$ana/merger/m10k_212222_t10k_nuR14_nubarR56/ \
		#	-i $i -ft $iodir/inputs/Throws/Osc_2015.root -n 10000 >> $shell_name
		#echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nu5R14_nubarR56.root -o $iodir/$ana/merger/m10k_212222_t10k_nu5R14_nubarR56/ \
			#-i $i -ft $iodir/inputs/Throws/Osc_2015.root -n 10000 >> $shell_name

	set i = `expr $i + 1`
end

set nrun = `expr $nrun + 1`

end

