twoway ///
  (scatteri 1 1, mcolor(red)       msymbol(circle)  legend(label(1 "Caudate"))) ///
  (scatteri 1 2, mcolor(blue)      msymbol(circle)  legend(label(2 "Putamen"))) ///
  (scatteri 1 3, mcolor(green)     msymbol(circle)  legend(label(3 "Pallidum"))) ///
  (scatteri 1 4, mcolor(orange)    msymbol(circle)  legend(label(4 "Angular gyrus"))) ///
  (scatteri 1 5, mcolor(purple)    msymbol(circle)  legend(label(5 "TPOTIFG"))) ///
  (scatteri 1 7, mcolor(magenta)   msymbol(circle)  legend(label(6 "Third ventricle"))) ///
  (scatteri 1 8, mcolor(olive)     msymbol(circle)  legend(label(7 "SFGMS"))) ///
  (scatteri 1 9, mcolor(navy)      msymbol(circle)  legend(label(8 "Accumbens area"))) ///
  (scatteri 1 10, mcolor(maroon)   msymbol(circle)  legend(label(9 "Lateral ventricle"))) ///
  (scatteri 1 12, mcolor(brown)    msymbol(circle)  legend(label(10 "Ventral DC"))) ///
  (scatteri 1 13, mcolor(gold)     msymbol(circle)  legend(label(11 "Precuneus"))) ///
  (scatteri 1 14, mcolor(pink)     msymbol(circle)  legend(label(12 "Parietal operculum"))) ///
, ///
  legend(cols(6) position(6) ring(0) size(vsmall) rowgap(1) colgap(2)) ///
  xscale(off) yscale(off) ///
  xlabel("") ylabel("") ///
  xtitle("") ytitle("") ///
  graphregion(color(white)) ///
  plotregion(margin(zero))
graph export clean_legend_2row.png, width(3000) replace
