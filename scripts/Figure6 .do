//  graph combine "calcarine_ml" ///
//  "lingual_ml", ///
//   	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophyratesinmlperyr" 
//	
//   graph combine "calcarine_percent" ///
//   "lingual_percent" , ///
//   	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophyratesinpercentperyr" 
	
//   graph combine "calcarine_control" ///
//   "lingual_control" , ///
//     	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//     	graph save "Age_control" 
//
//   graph combine "calcarine_HD" ///
//   "lingual_HD" , ///
//     	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//     	graph save "Age_HD" 

	graph combine "Atrophyratesinmlperyr" ///
	"Atrophyratesinpercentperyr" ///
	"Age_control" ///
	"Age_HD" , ///
	cols(4) xsize(4) ysize(2) imargin(verytiny) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_seven_combined" 
	