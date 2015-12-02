#! /bin/tcsh
set ana = ptheta

set maindir = /disk/usr2/palomino/Fit2015/
set events = $1

cd $HOME/ptheta/Ptheta_MultiSample/Minimal/bin

time	./Tester2015 \
	-f $maindir/inputs/Matrix/FullPthetaMatrix_postfit_xsec2015c.root \
	-n $events \
	-o $maindir/inputs/Throws/sys_throws_${ana}_xsec2015c.root

cd -
