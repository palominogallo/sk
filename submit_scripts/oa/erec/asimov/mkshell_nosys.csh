#!/bin/csh 
# 101*51  = 5151 = 198*26 + 3
# 51* 51  = 2601 = 100*26 + 1
# # 81*21   = 1701 = 170*10 + 1   comparison

set ana = erec
set exedir = /home/palomino/ptheta/P-theta/Minimal/bin
set rundir = /home/palomino/sk/submit_scripts/oa/$ana/asimov
set iodir  = /disk/usr2/palomino/NuMu16/
set logdir = $iodir/$ana/asimov/log

set nrun = 0
while ($nrun < 171)
	#while ($nrun < 101)

	set dname = "$nrun"
	if ( -d $dname ) then
		rm -rf $dname
		mkdir $dname
	else
		mkdir $dname
	endif

	set shell_name = $rundir/$dname/fit_asimov.$nrun.csh
	@ n = $nrun * 10
	echo $n

if ( $nrun == 170 ) then
	#if ( $nrun == 100 ) then
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
# @\$-o $logdir/fit_asimov.$nrun.out
# @\$-e $logdir/fit_asimov.$nrun.err

cd $exedir

EOF
set i = $n

while ( $i < $n + $nbins )
#numubar normal
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m1_202211_t0k_nuR16_nubarR56 \
	-o $iodir/$ana/asimov/g10k_set3_202211_s0_m1_t0k_nuR16_nubarR56_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR16_nubarR56_s0.root -a $iodir/$ana/template/tpl_t0k_nuR16_nubarR56.root \
	-m 3 -n 1 -b $i >> $shell_name
#numubar inverted
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m1_202211_t0k_nuR16_nubarR56_h \
	-o $iodir/$ana/asimov/g10k_set3_202211_s0_m1_t0k_nuR16_nubarR56_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR16_nubarR56_s0.root -a $iodir/$ana/template/tpl_t0k_nuR16_nubarR56.root \
	-m 3 -n 1 -b $i >> $shell_name
#numu normal
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m1_201122_t0k_nuR16_nubarR56 \
	-o $iodir/$ana/asimov/g10k_set3_201122_s0_m1_t0k_nuR16_nubarR56_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR16_nubarR56_s0.root -a $iodir/$ana/template/tpl_t0k_nuR16_nubarR56.root \
	-m 3 -n 1 -b $i >> $shell_name
#numu inverted
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m1_201122_t0k_nuR16_nubarR56_h \
	-o $iodir/$ana/asimov/g10k_set3_201122_s0_m1_t0k_nuR16_nubarR56_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR16_nubarR56_s0.root -a $iodir/$ana/template/tpl_t0k_nuR16_nubarR56.root \
	-m 3 -n 1 -b $i >> $shell_name
  set i = `expr $i + 1`
end

set nrun = `expr $nrun + 1`

end
