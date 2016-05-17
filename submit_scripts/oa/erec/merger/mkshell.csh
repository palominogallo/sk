#!/bin/csh 
# 101*51  = 5151 = 198*26 + 3
# 51*51   = 2601 = 100*26 + 1
# 81*21   = 1701 = 170*10 + 1   comparison

set ana = erec

set exedir = /home/palomino/ptheta/P-theta/Minimal/bin
set rundir = /home/palomino/sk/submit_scripts/oa/$ana/merger
set iodir  = /disk/usr2/palomino/NuMu16/
set logdir = $iodir/$ana/merger/log

set nrun = 0
set n = 0
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

	set shell_name = $rundir/$dname/fit_merger.$nrun.csh
	@ n = $nrun * 10
	echo $n 

#if ( $nrun == 198 ) then
#if ( $nrun == 100 ) then
if ( $nrun == 170 ) then
	#set nbins = 3
	set nbins = 1
else
	#set nbins = 26
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
	#numu r16
	#echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -o $iodir/$ana/merger/m10k_201122_t10k_nuR16_nubarR56/ \
	#	-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 >> $shell_name
	#echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -o $iodir/$ana/merger/m10k_201122_t10k_nuR16_nubarR56_h/ \
	#	-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 -h >> $shell_name
	#numubar r16
	echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -o $iodir/$ana/merger/m10k_202211_t10k_nuR16_nubarR56/ \
		-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 >> $shell_name
	echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR16_nubarR56.root -o $iodir/$ana/merger/m10k_202211_t10k_nuR16_nubarR56_h/ \
		-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 -h >> $shell_name
	#numu r17
	#echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root -o $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57/ \
	#	-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 >> $shell_name
	#echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root -o $iodir/$ana/merger/m10k_201122_t10k_nuR17_nubarR57_h/ \
	#	-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 -h >> $shell_name
	#numubar r17
	echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root -o $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57/ \
		-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 >> $shell_name
	echo $exedir/Merger -t $iodir/$ana/template/tpl_t10k_nuR17_nubarR57.root -o $iodir/$ana/merger/m10k_202211_t10k_nuR17_nubarR57_h/ \
		-i $i -ft $iodir/inputs/Throws/Osc_2016_pdg2015_reac2015.root -n 10000 -h >> $shell_name
	set i = `expr $i + 1`
end

set nrun = `expr $nrun + 1`

end

