//  graph combine "third_ml" ///
//   	"lat_ml" , ///
//   	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophy_rates_in_ml_peryr" 
//	
//   graph combine "third_control" ///
//   	"lat_control" , ///
//   	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "scatter_control" 
//	
//   graph combine "third_HD" ///
//     	"lat_HD" , ///
//     	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//     	graph save "scatter_HD" 

	graph combine "Atrophy_rates_in_ml_peryr" ///
	"scatter_control" ///
	"scatter_HD" , ///
	cols(3) xsize(3) ysize(2) imargin(medium) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_eleven_combined" 
	