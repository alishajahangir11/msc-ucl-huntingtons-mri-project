// graph combine "caudate_boxplot_ml.gph" ///
// 	"putamen_box_HDISS_ml" ///
// 	"pallidum_box_HDISS_ml" ///
// 	"accumbens_box_HDISS_ml" , ///
// 	rows(4) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
// 	graph save "Atrophy_rates_in_mlperyr.gph" 
	
// graph combine "caudate_box_HDISS_percent" ///
// 	"putamen_box_HDISS_percent" ///
// 	"pallidum_box_HDISS_percent" ///
// 	"accumbens_box_HDISS_percent" , ///
// 	rows(4) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
// 	graph save "Atrophy_rates_in_percentperyr.gph" 
	
// graph combine "caudate_scatter_CAP100" ///
//  	"putamen_scatter_CAP100" ///
//  	"pallidum_scatter_CAP100" ///
//  	"accumbens_scatter_CAP100" , ///
//  	rows(4) xsize(2) ysize(8) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//  	graph save "scatter_CAP100" 
	
	graph combine "Atrophy_rates_in_mlperyr" ///
	"Atrophy_rates_in_percentperyr" ///
	"scatter_CAP100" , ///
	cols(3) xsize(3) ysize(4) imargin(verytiny) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_two_combined" 
	