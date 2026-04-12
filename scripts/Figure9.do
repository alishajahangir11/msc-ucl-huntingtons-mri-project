//  graph combine "cerebral_ml" ///
//  "brainstem_ml" ///
//   	"ventraldc_ml" , ///
//   	rows(3) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophy_rates_inml_peryr" 
//	
//   graph combine "cerebral_percent" ///
//   "brainstem_percent" ///
//   	"ventraldc_percent" , ///
//   	rows(3) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophy_rates_inpercent_peryr" 
//	
//   graph combine "cerebral_control" ///
//   "brainstem_control" ///
//     "ventraldc_control" , ///
//     	rows(3) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//     	graph save "scatterControl" 
//		
//   graph combine "cerebral_HD" ///
//   "braisntem_HD" ///
//     "ventraldc_HD" , ///
//     	rows(3) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//     	graph save "scatterH_D" 

	graph combine "Atrophy_rates_inml_peryr" ///
	"Atrophy_rates_inpercent_peryr" ///
	"scatterControl" ///
	"scatterH_D" , ///
	cols(4) xsize(4) ysize(3) imargin(medium) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_nine_combined" 
	