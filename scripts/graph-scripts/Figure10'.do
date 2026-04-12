graph combine "cerebral_ml" ///
	"brainstem_ml" ///
  	"ventraldc_ml" , ///
  	rows(3) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
  	graph save "Atrophy_ratesin__mlper_yr" 
	
graph combine "cerebral_percent" ///
  "brainstem_percent" ///
  "ventraldc_percent" , ///
  	rows(3) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
  	graph save "Atrophy_ratesin__percentper_yr" 
	
graph combine "cerebral_CAP100" ///
	"brainstem_CAP100" ///
    "ventraldc_CAP100" , ///
    	rows(3) xsize(2) ysize(5) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
    	graph save "scatter___CAP100"  
	
	graph combine "Atrophy_ratesin__mlper_yr" ///
	"Atrophy_ratesin__percentper_yr" ///
	"scatter___CAP100" , ///
	cols(3) xsize(3) ysize(3) imargin(verytiny) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_10_combined" 
	