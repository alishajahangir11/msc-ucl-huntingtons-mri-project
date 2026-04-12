//  graph combine "triangular_box_HDISS_ml" ///
//   	"superior_box_HDISS_ml" , ///
//   	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophy_rates_inmlperyr" 
//	
//   graph combine "triangular_box_HDISS_percent" ///
//   	"superior_box_HDISS_percent" , ///
//   	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophy_rates_inpercentperyr" 
//	
//   graph combine "triangular_scatter_CAP100" ///
//     	"superior_scatter_CAP100" , ///
//     	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//     	graph save "scatterHD" 

	graph combine "Atrophy_rates_inmlperyr" ///
	"Atrophy_rates_inpercentperyr" ///
	"scatterHD" , ///
	cols(3) xsize(3) ysize(2) imargin(verytiny) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_four_combined" 
	