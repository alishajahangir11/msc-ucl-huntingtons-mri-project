 graph combine "third_ml.gph" ///
  	"lat_ml" , ///
  	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
  	graph save "Atrophy_rates_inmlperyr" 
	
  graph combine "third_CAP100" ///
  	"lat_CAP100" , ///
  	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
  	graph save "scatter_cap100" 

	graph combine "Atrophy_rates_inmlperyr" ///
	"scatter_cap100" , ///
	cols(2) xsize(2) ysize(2) imargin(verytiny) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_12_combined" 
	