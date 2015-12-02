#! /bin/tcsh
set ana = ptheta

set maindir = /disk/usr2/palomino/Fit2015/
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

cd $HOME/ptheta/Ptheta_MultiSample/Minimal/bin

time	./GenerateXP \
	-f $maindir/inputs/Matrix/FullPthetaMatrix_postfit_xsec2015c.root \
	-pe $maindir/inputs/NuePDF/numode_nue_binning_J/ \
	-pm $maindir/inputs/NumuPDF/numode_numu_binning_J.root \
	-pbe $maindir/inputs/NuePDF/antinu_nue_binning_J/ \
	-pbm $maindir/inputs/NumuPDF/antinu_numu_binning_J.root \
	-xe  $maindir//inputs/RFnue/nu_beam/ \
	-xmu $maindir/inputs/RFnumu/nu_beam/ \
	-xbe $maindir/inputs/RFnue/nubar_beam/ \
	-xbmu $maindir/inputs/RFnumu/nubar_beam/ \
	-tnb $potnub \
	-tnu $potnu \
	-n $events \
	-m $mode \
	-s $sys \
	-sf $maindir/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root \
	-o $maindir/${ana}/generate/gen_n${nevents}k_m${mode}_nu${potneutrino}_nubar${potantineutrino}_s${sys}.root

cd -
