// graph combine "triangular_box__ml.gph" ///
//  	"superior_box__ml" , ///
//  	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//  	graph save "Atrophy_rates_in__mlperyr" 
	
//  graph combine "triangular_box__percent" ///
//  	"superior_box__percent" , ///
//  	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//  	graph save "Atrophy_rates_in__percentperyr" 
	
//   graph combine "triangular_scatter__control" ///
//    	"superior_scatter__control" , ///
//    	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//    	graph save "scatter__control" 
//	
//   graph combine "triangular_scatter__HD" ///
//    	"superior_scatter__HD" , ///
//    	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//    	graph save "scatter__HD" 
	
	graph combine "Atrophy_rates_in__mlperyr" ///
	"Atrophy_rates_in__percentperyr" ///
	"scatter__control" ///
	"scatter__HD" , ///
	cols(4) xsize(8) ysize(4) imargin(medium) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_three_combined" 
	