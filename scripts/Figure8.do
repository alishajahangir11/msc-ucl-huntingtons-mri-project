 graph combine "calcarine_ml" ///
  	"lingual_ml" , ///
  	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
  	graph save "Atrophy_rates_in_ml_peryr" 
	
  graph combine "calcarine_percent" ///
  	"lingual_percent" , ///
  	rows(2) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
  	graph save "Atrophy_rates_in_percent_peryr" 
	
  graph combine "calcarine_CAP100" ///
    	"lingual_CAP100" , ///
    	rows(2) xsize(2) ysize(4) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
    	graph save "scatter_CAP100" 

	graph combine "Atrophy_rates_in_ml_peryr" ///
	"Atrophy_rates_in_percent_peryr" ///
	"scatter_CAP100" , ///
	cols(3) xsize(3) ysize(2) imargin(verytiny) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_eight_combined" 
	