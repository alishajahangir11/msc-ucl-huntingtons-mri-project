//   graph combine "caudate_ml" ///
//   "putamen_ml" ///
//   "pallidum_ml" ///
//   "accumbens_ml.gph", ///
//    	rows(4) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//    	graph save "Atrophyratesinmlperyr" 
//	
//    graph combine "caudate_percent" ///
//    "putamen_percent" ///
//    "pallidum_percent" ///
//    "accumbens_percent" , ///
//    	rows(4) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//    	graph save "Atrophyratesinpercentperyr" 
//	
//    graph combine "caudate_control" ///
//    "putamen_control" ///
//    "pallidum_control" ///
//    "accumbens_control" , ///
//      	rows(4) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//      	graph save "Age_control" 
//
//    graph combine "caudate_HD" ///
//    "putamen_HD" ///
//    "pallidum_HD" ///
//    "accumbens_HD" , ///
//      	rows(4) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//      	graph save "Age_HD" 

	graph combine "Atrophyratesinmlperyr" ///
	"Atrophyratesinpercentperyr" ///
	"Age_control" ///
	"Age_HD" , ///
	cols(4) xsize(4) ysize(4) imargin(medium) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_one_combined" 
	