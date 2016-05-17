#! /bin/tcsh
set ana = erec
#set mainoutdir = /disk/usr2/palomino/Fit2015/
set mainoutdir = /disk/usr2/palomino/NuMu16/

#set codedir = $HOME/ptheta/Erec/Minimal/
set codedir = $HOME/ptheta/P-theta/Minimal/

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

cd $codedir/bin

time	./GenerateXP \
	-f $mainoutdir/inputs/Matrix/FullErecMatrix_postfit_xsec2015c.root \
	-pe $mainoutdir/inputs/NuePDF/numode_nue_binning_J/ \
	-pm $mainoutdir/inputs/NuMuPDF/numode_numu_binning_J.root \
	-pbe $mainoutdir/inputs/NuePDF/antinu_nue_binning_J/ \
	-pbm $mainoutdir/inputs/NuMuPDF/antinu_numu_binning_J.root \
	-xe  $mainoutdir//inputs/RFNue/nu_beam/ \
	-xmu $mainoutdir/inputs/RFNuMu/nu_beam/ \
	-xbe $mainoutdir/inputs/RFNue/nubar_beam/ \
	-xbmu $mainoutdir/inputs/RFNuMu/nubar_beam/ \
	-tnb $potnub \
	-tnu $potnu \
	-n $events \
	-m $mode \
	-s $sys \
	-sf $mainoutdir/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root \
	-o $mainoutdir/${ana}/generate/gen_n${nevents}k_m${mode}_nu${potneutrino}_nubar${potantineutrino}_s${sys}.root

cd -
