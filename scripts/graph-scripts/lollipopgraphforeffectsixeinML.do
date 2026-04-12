// gen x = _n
//
// label define roilab ///
// 1 "Caudate" ///
// 2 "Putamen" ///
// 3 "Pallidum" ///
// 4 "Angular gyrus" ///
// 5 "TPOTIFG" ///
6 "Calcarine cortex" ///
// 7 "Third ventricle" ///
// 8 "SFGMS" ///
// 9 "Accumbens area" ///
// 10 "Lateral ventricle" ///
11 "Cerebral white matter" ///
// 12 "Ventral DC" ///
// 13 "Precuneus" ///
// 14 "Parietal operculum" ///
15 "Brainstem" ///
16 "Lingual gyrus"
// label values x roilab

twoway ///
    (rcap CIlower CIupper x, lcolor(black) lwidth(medium)) ///
    (scatter Effectsize x if _n==1, mcolor(red)) ///
    (scatter Effectsize x if _n==2, mcolor(blue)) ///
    (scatter Effectsize x if _n==3, mcolor(green)) ///
    (scatter Effectsize x if _n==4, mcolor(orange)) ///
    (scatter Effectsize x if _n==5, mcolor(purple)) ///
    (scatter Effectsize x if _n==6, mcolor(cyan)) ///
    (scatter Effectsize x if _n==7, mcolor(magenta)) ///
    (scatter Effectsize x if _n==8, mcolor(olive)) ///
    (scatter Effectsize x if _n==9, mcolor(navy)) ///
    (scatter Effectsize x if _n==10, mcolor(maroon)) ///
    (scatter Effectsize x if _n==11, mcolor(teal)) ///
    (scatter Effectsize x if _n==12, mcolor(brown)) ///
    (scatter Effectsize x if _n==13, mcolor(gold)) ///
    (scatter Effectsize x if _n==14, mcolor(pink)) ///
    (scatter Effectsize x if _n==15, mcolor(lime)) ///
    (scatter Effectsize x if _n==16, mcolor(black)), ///
    xlabel(1/16, valuelabel angle(45) nogrid) ///
    ylabel(0(0.2)1.8, grid) ///
    ytitle("Longitudinal Effect Size") ///
	xtitle("ROI") ///
    yline(0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8, lpattern(dot) lcolor(black)) ///
    legend(off)
	graphregion(margin(20 20 20 20)) ///
	aspect(50)
graph save "effectsize_ml.gph" 



