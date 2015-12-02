#! /bin/tcsh
set ana = erec
set maindir = /disk/usr2/palomino/Fit2015/

set events = $1
set potnu = $2
set potnub = $3

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
time ./MakeTemplate \
	-f $maindir/inputs/Matrix/FullErecMatrix_postfit_xsec2015c.root \
	-pe $maindir/inputs/NuePDF/numode_nue_binning_J/ \
	-pm $maindir/inputs/NumuPDF/numode_numu_binning_J.root \
	-pbe $maindir/inputs/NuePDF/antinu_nue_binning_J/ \
	-pbm $maindir/inputs/NumuPDF/antinu_numu_binning_J.root \
	-xe  $maindir/inputs/RFnue/nu_beam/ \
	-xmu $maindir/inputs/RFnumu/nu_beam/ \
	-xbe $maindir/inputs/RFnue/nubar_beam/ \
	-xbmu $maindir/inputs/RFnumu/nubar_beam/ \
	-tnu $potnu \
	-tnb $potnub \
	-n $events \
	-sf $maindir/inputs/SplineFile/weightsv8_t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_numuselec.root \
	-ft $maindir/inputs/Throws/sys_throws_${ana}_xsec2015c.root \
	-o $maindir/${ana}/template/tpl_t${nevents}k_nu${potneutrino}_nubar${potantineutrino}.root
cd -
	

