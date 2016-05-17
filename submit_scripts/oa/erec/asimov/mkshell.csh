#!/bin/csh 
# 101*51  = 5151 = 198*26 + 3
# 51* 51  = 2601 = 100*26 + 1
# 81*21   = 1701 = 170*10 + 1   comparison
set ana = erec
set exedir = /home/palomino/ptheta/P-theta/Minimal/bin
set rundir = /home/palomino/sk/submit_scripts/oa/$ana/asimov
set iodir  = /disk/usr2/palomino/NuMu16/
set logdir = $iodir/$ana/asimov/log

set nrun = 0
#while ($nrun < 199)
	#while ($nrun < 101)
while ($nrun < 171)

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
	#set nbins = 1
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
#numu normal
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57 \
	-o $iodir/$ana/asimov/g10k_set1_201122_s1_m10k_t10k_nuR17_nubarR57_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set1_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57 \
	-o $iodir/$ana/asimov/g10k_set2_201122_s1_m10k_t10k_nuR17_nubarR57_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set2_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57 \
	-o $iodir/$ana/asimov/g10k_set3_201122_s1_m10k_t10k_nuR17_nubarR57_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
#numu inverted
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57_h \
	-o $iodir/$ana/asimov/g10k_set1_201122_s1_m10k_t10k_nuR17_nubarR57_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set1_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57_h \
	-o $iodir/$ana/asimov/g10k_set2_201122_s1_m10k_t10k_nuR17_nubarR57_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set2_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57_h \
	-o $iodir/$ana/asimov/g10k_set3_201122_s1_m10k_t10k_nuR17_nubarR57_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
#numubar normal
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57 \
	-o $iodir/$ana/asimov/g10k_set1_202211_s1_m10k_t10k_nuR17_nubarR57_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set1_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57 \
	-o $iodir/$ana/asimov/g10k_set2_202211_s1_m10k_t10k_nuR17_nubarR57_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set2_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57 \
	-o $iodir/$ana/asimov/g10k_set3_202211_s1_m10k_t10k_nuR17_nubarR57_p5/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
#numubar inverted
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57_h \
	-o $iodir/$ana/asimov/g10k_set1_202211_s1_m10k_t10k_nuR17_nubarR57_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set1_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57_h \
	-o $iodir/$ana/asimov/g10k_set2_202211_s1_m10k_t10k_nuR17_nubarR57_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set2_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
echo $exedir/SensiAsimov_nu_nubar \
	-f $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57_h \
	-o $iodir/$ana/asimov/g10k_set3_202211_s1_m10k_t10k_nuR17_nubarR57_p5_h/asimov$i.root  \
	-e $iodir/$ana/generate/g10k_set3_m15_nuR17_nubarR57_s1.root -a $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root \
	-m 3 -n 10000 -b $i >> $shell_name
  set i = `expr $i + 1`
end

set nrun = `expr $nrun + 1`

end
