#! /bin/tcsh
set ana = etheta

set maindir15 = /disk/usr2/palomino/Fit2015/
set maindir16 = /disk/usr2/palomino/Fit2016/
set events = $1
set mode = $2
set potnu = $3
set potnub = $4
set sys = $5

set nevents = `expr $1 / 1000`

if ($potnu == 0.657) then
	set potneutrino = R14
else if ($potnu == 0.691) then
	set potneutrino = R16
else if ($potnu == 3.285) then
	set potneutrino = 5R14
else 
	set potneutrino = $potnu
endif

if ($potnub == 0.401) then
	set potantineutrino = R56
else 
	set potantineutrino = $potnub
endif

cd $HOME/P-theta/Minimal/bin

time	./GenerateXP \
	-f $maindir15/inputs/Matrix/FullErecMatrix_postfit_xsec2015c.root \
	-pe $maindir15/inputs/NuePDF/numode_nue_binning_P/ \
	-pm $maindir15/inputs/NumuPDF/numode_numu_binning_J.root \
	-pbe $maindir15/inputs/NuePDF/antinu_nue_binning_P/ \
	-pbm $maindir15/inputs/NumuPDF/antinu_numu_binning_J.root \
	-xe  $maindir16/inputs/RFnue/nu_beam_JP/ \
	-xmu $maindir15/inputs/RFnumu/nu_beam/ \
	-xbe $maindir16/inputs/RFnue/nubar_beam_JP/ \
	-xbmu $maindir15/inputs/RFnumu/nubar_beam/ \
	-tnb $potnub \
	-tnu $potnu \
	-n $events \
	-m $mode \
	-s $sys \
	-sf $maindir15/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root \
	-o $maindir16/${ana}/generate/gen_n${nevents}k_m${mode}_nu${potneutrino}_nubar${potantineutrino}_s${sys}.root

cd -
