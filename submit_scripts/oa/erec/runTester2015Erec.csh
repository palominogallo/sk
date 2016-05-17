#! /bin/tcsh
set ana = erec

#set maindir = /disk/usr2/palomino/Fit2015/
set maindir = /disk/usr2/palomino/NuMu16/
set execdir = $HOME/ptheta/P-theta/Minimal/bin
set events = $1

cd $execdir

time	./Tester2015 \
	-f $maindir/inputs/Matrix/FullErecMatrix_postfit_xsec2015c_1p1h.root \
	-n $events \
	-o $maindir/inputs/Throws/sys_throws_${ana}_xsec2015c_1p1h.root

cd -
