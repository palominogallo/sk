#!/bin/tcsh 
# based on James I.
#
set maindir = /disk/usr2/palomino/Fit2015/

### neutrino mode

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/FHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numu_x_nue_nueselec.root \
-o $maindir/inputs/NuePDF/numode_nue_binning_P/ \
-n 0 \
-m 0

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/FHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numu_x_numu_nueselec.root \
-o $maindir/inputs/NuePDF/numode_nue_binning_P/ \
-n 1 \
-m 0

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/FHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_numubar_nueselec.root \
-o $maindir/inputs/NuePDF/numode_nue_binning_P/ \
-n 2 \
-m 0

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/FHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.nue_x_nue_nueselec.root \
-o $maindir/inputs/NuePDF/numode_nue_binning_P/ \
-n 3 \
-m 0


 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/FHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.nuebar_x_nuebar_nueselec.root \
-o $maindir/inputs/NuePDF/numode_nue_binning_P/ \
-n 4 \
-m 0

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/FHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.250ka.fine.numubar_x_nuebar_nueselec.root \
-o $maindir/inputs/NuePDF/numode_nue_binning_P/ \
-n 5 \
-m 0

###############################################################

### antineutrino mode

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/RHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numu_x_nue_nueselec.root \
-o $maindir/inputs/NuePDF/antinu_nue_binning_P/ \
-n 0 \
-m 1

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/RHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numu_x_numu_nueselec.root \
-o $maindir/inputs/NuePDF/antinu_nue_binning_P/ \
-n 1 \
-m 1

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/RHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numubar_x_numubar_nueselec.root \
-o $maindir/inputs/NuePDF/antinu_nue_binning_P/ \
-n 2 \
-m 1

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/RHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.nue_x_nue_nueselec.root \
-o $maindir/inputs/NuePDF/antinu_nue_binning_P/ \
-n 3 \
-m 1

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/RHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.nuebar_x_nuebar_nueselec.root \
-o $maindir/inputs/NuePDF/antinu_nue_binning_P/ \
-n 4 \
-m 1

 /home/palomino/P-theta/Minimal/Tools/NueSeed/NueSeed \
-f $maindir/inputs/SK_with_CCcoh_scale/RHC/t2ksk.14a.neut5.3.2.13a_tuned_v1r0.m250ka.fine.numubar_x_nuebar_nueselec.root \
-o $maindir/inputs/NuePDF/antinu_nue_binning_P/ \
-n 5 \
-m 1
