#!/bin/csh 
set ana = ptheta

set exedir = /home/palomino/ptheta/Ptheta_MultiSample/Minimal/bin
set rundir = /home/palomino/sk/submit_scripts/oa/$ana/asimov
set iodir  = /disk/usr2/palomino/Fit2015/
set logdir = $iodir/$ana/asimov/log

set nrun = 0
while ($nrun < 52)

	set dname = "$nrun"
	if ( -d $dname ) then
		rm -rf $dname
		mkdir $dname
	else
		mkdir $dname
	endif

	set shell_name = $rundir/$dname/fit_asimov.$nrun.csh

cat >! $shell_name <<EOF
#!/bin/tcsh -f

#
# Batch mode using NQS
#

# @\$-q all
# @\$-o $logdir/fit_asimov.$nrun.out
# @\$-e $logdir/fit_asimov.$nrun.err

cd $exedir

EOF

echo $exedir/SensiAsimov_nu_nubar -f $iodir/$ana/merger/m10k_delta_t10k_nuR14_nubarR56/ \
		-o $iodir/$ana/asimov/g10k_delta_s1_m10k_t10k_nuR14_nubarR56/asimov$nrun.root  \
		-e $iodir/$ana/generate/gen_n10k_m15_nuR14_nubarR56_s1.root -a $iodir/$ana/template/tpl_t10k_nuR14_nubarR56.root \
		-m 3 -n 10000 -b $nrun >> $shell_name
echo $exedir/SensiAsimov_nu_nubar -f $iodir/$ana/merger/m10k_delta_t10k_nu5R14_nubarR56/ \
		-o $iodir/$ana/asimov/g10k_delta_s1_m10k_t10k_nu5R14_nubarR56/asimov$nrun.root  \
		-e $iodir/$ana/generate/gen_n10k_m15_nu5R14_nubarR56_s1.root -a $iodir/$ana/template/tpl_t10k_nu5R14_nubarR56.root \
		-m 3 -n 10000 -b $nrun >> $shell_name
		#echo $exedir/SensiAsimov_nu_nubar -f $iodir/$ana/merger/m15k_delta_t15k_nuR14_nubarR56/ \
		#		-o $iodir/$ana/asimov/g10k_delta_s1_m15k_t15k_nuR14_nubarR56/asimov$nrun.root  \
		#		-e $iodir/$ana/generate/gen_n10k_m15_nuR14_nubarR56_s1.root -a $iodir/$ana/template/tpl_t15k_nuR14_nubarR56.root \
		#		-m 3 -n 15000 -b $nrun >> $shell_name
		#echo $exedir/SensiAsimov_nu_nubar -f $iodir/$ana/merger/m15k_delta_t15k_nu5R14_nubarR56/ \
		#		-o $iodir/$ana/asimov/g10k_delta_s1_m15k_t15k_nu5R14_nubarR56/asimov$nrun.root  \
		#		-e $iodir/$ana/generate/gen_n10k_m15_nu5R14_nubarR56_s1.root -a $iodir/$ana/template/tpl_t15k_nu5R14_nubarR56.root \
		#		-m 3 -n 15000 -b $nrun >> $shell_name
		#echo $exedir/SensiAsimov_nu_nubar -f $iodir/$ana/merger/m20k_delta_t20k_nuR14_nubarR56/ \
		#		-o $iodir/$ana/asimov/g10k_delta_s1_m20k_t20k_nuR14_nubarR56/asimov$nrun.root  \
		#		-e $iodir/$ana/generate/gen_n10k_m15_nuR14_nubarR56_s1.root -a $iodir/$ana/template/tpl_t20k_nuR14_nubarR56.root \
		#		-m 3 -n 20000 -b $nrun >> $shell_name
		#echo $exedir/SensiAsimov_nu_nubar -f $iodir/$ana/merger/m20k_delta_t20k_nu5R14_nubarR56/ \
		#		-o $iodir/$ana/asimov/g10k_delta_s1_m20k_t20k_nu5R14_nubarR56/asimov$nrun.root  \
		#		-e $iodir/$ana/generate/gen_n10k_m15_nu5R14_nubarR56_s1.root -a $iodir/$ana/template/tpl_t20k_nu5R14_nubarR56.root \
		#		-m 3 -n 20000 -b $nrun >> $shell_name

set nrun = `expr $nrun + 1`

end
