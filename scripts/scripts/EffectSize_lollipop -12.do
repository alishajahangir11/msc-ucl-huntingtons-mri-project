// gen x = _n
//
// label define roilab ///
// 1 "Caudate" ///
// 2 "Putamen" ///
// 3 "Pallidum" ///
// 4 "Angular gyrus" ///
// 5 "TPOTIFG" ///
// 6 "Third ventricle" ///
// 7 "SFGMS" ///
// 8 "Accumbens area" ///
// 9 "Lateral ventricle" ///
// 10 "Ventral DC" ///
// 11 "Precuneus" ///
// 12 "Parietal operculum" 
// label values x roilab
//
// twoway ///
//     (rcap CIlower CIupper x, lcolor(black) lwidth(medium)) ///
//     (scatter Effectsize x if _n==1, mcolor(red)) ///
//     (scatter Effectsize x if _n==2, mcolor(blue)) ///
//     (scatter Effectsize x if _n==3, mcolor(green)) ///
//     (scatter Effectsize x if _n==4, mcolor(orange)) ///
//     (scatter Effectsize x if _n==5, mcolor(purple)) ///
//     (scatter Effectsize x if _n==6, mcolor(magenta)) ///
//     (scatter Effectsize x if _n==7, mcolor(olive)) ///
//     (scatter Effectsize x if _n==8, mcolor(navy)) ///
//     (scatter Effectsize x if _n==9, mcolor(maroon)) ///
//     (scatter Effectsize x if _n==10, mcolor(brown)) ///
//     (scatter Effectsize x if _n==11, mcolor(gold)) ///
//     (scatter Effectsize x if _n==12, mcolor(pink)) ///
//     xlabel(1/12, valuelabel angle(45) nogrid) ///
//     ylabel(0(0.2)1.8, grid) ///
//     ytitle("Longitudinal Effect Size") ///
// 	xtitle("ROI") ///
//     yline(0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8,lpattern(dot) lcolor(black)) ///
//     legend(off) ///
// 	graphregion(margin(20 20 20 20)) ///
//     aspect(50)
// graph save "effectsize_ML.gph"
//	

twoway (rcap CIlower CIupper x, lcolor(black) lwidth(medium)) ///
       (scatter Effectsize x if _n==1, mcolor(red)) ///
       (scatter Effectsize x if _n==2, mcolor(blue)) ///
       (scatter Effectsize x if _n==3, mcolor(green)) ///
       (scatter Effectsize x if _n==4, mcolor(orange)) ///
       (scatter Effectsize x if _n==5, mcolor(purple)) ///
       (scatter Effectsize x if _n==6, mcolor(magenta)) ///
       (scatter Effectsize x if _n==7, mcolor(olive)) ///
       (scatter Effectsize x if _n==8, mcolor(navy)) ///
       (scatter Effectsize x if _n==9, mcolor(maroon)) ///
       (scatter Effectsize x if _n==10, mcolor(brown)) ///
       (scatter Effectsize x if _n==11, mcolor(gold)) ///
       (scatter Effectsize x if _n==12, mcolor(pink)), ///
       xlabel(1/12, valuelabel angle(45) nogrid) ///
       ylabel(0(0.2)1.8, grid) ///
       ytitle("Longitudinal Effect Size") ///
       xtitle("ROI") ///
       yline(0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8, lpattern(dot) lcolor(black)) ///
       legend(off) ///
       graphregion(margin(1 1 1 1)) ///
       aspectratio(.5)

graph save "effectsize_ML.gph", replace


