// gen y = _n
//
// label define roilab ///
// 1 "Caudate" ///
// 2 "Putamen" ///
// 3 "Third ventricle" ///
// 4 "Pallidum" ///
// 5 "Angular gyrus" ///
// 6 "TPOTIFG" ///
// 7 "SFGMS" ///
// 8 "Calcarine cortex" ///
// 9 "Accumbens area" ///
// 10 "Cerebral white matter" ///
// 11 "Ventral DC" ///
// 12 "Precuneus" ///
// 13 "Lateral ventricle" ///
// 14 "Parietal operculum" ///
// 15 "Brainstem" ///
// 16 "Lingual gyrus"
// label values y roilab ///

twoway ///
    (rcap CIlower CIupper y, lcolor(black) lwidth(medium)) ///
    (scatter effectsize y if _n==1, mcolor(red)) ///
    (scatter effectsize y if _n==2, mcolor(blue)) ///
    (scatter effectsize y if _n==3, mcolor(magenta)) ///
    (scatter effectsize y if _n==4, mcolor(green)) ///
    (scatter effectsize y if _n==5, mcolor(orange)) ///
    (scatter effectsize y if _n==6, mcolor(purple)) ///
    (scatter effectsize y if _n==7, mcolor(olive)) ///
    (scatter effectsize y if _n==8, mcolor(cyan)) ///
    (scatter effectsize y if _n==9, mcolor(navy)) ///
    (scatter effectsize y if _n==10, mcolor(teal)) ///
    (scatter effectsize y if _n==11, mcolor(brown)) ///
    (scatter effectsize y if _n==12, mcolor(gold)) ///
    (scatter effectsize y if _n==13, mcolor(maroon)) ///
    (scatter effectsize y if _n==14, mcolor(pink)) ///
    (scatter effectsize y if _n==15, mcolor(lime)) ///
    (scatter effectsize y if _n==16, mcolor(black)), ///
 xlabel(1/16, valuelabel angle(45) nogrid) ///
    ylabel(0(0.2)1.8, grid) ///
    ytitle("Longitudinal Effect Size (% per year)") ///
	xtitle("ROI") ///
    yline(0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8, lpattern(dot) lcolor(black)) ///
	    legend(off)
	graphregion(margin(20 20 20 20)) ///
	aspect(50)
graph save "effectsize_%.gph" 



