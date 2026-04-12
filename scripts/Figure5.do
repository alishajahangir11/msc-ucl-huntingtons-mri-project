// graph combine "angular_ml" ///
// 	"precuneus_ml" ///
//   	"parietal_ml" , ///
//   	rows(3) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//   	graph save "Atrophy_ratesin__Mlperyr" 
	
// graph combine "angular_percent" ///
//   "precuneus_percent" ///
//   "parietal_percent" , ///
//   	rows(3) xsize(1) ysize(1) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//  	graph save "Atrophy_ratesin__percentperyr" 
//	
//  graph combine "angular_control" ///
//  	"precuneus_control" ///
//      "parietal_control" , ///
//      	rows(3) xsize(2) ysize(5) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
//	
//      	graph save "scatterControl"  
	
    graph combine "angular_HD" ///
    "precuneus_HD" ///
    "parietal_HD" , ///
     	rows(3) xsize(2) ysize(5) imargin(tiny) scheme(s1color) graphregion(lcolor(white)) altshrink 
	
     	graph save "scatteR___HD" 
	
	graph combine "Atrophy_ratesin__Mlperyr" ///
	"scatterControl"  ///
	"scatteR___HD" , ///
	cols(3) xsize(3) ysize(3) imargin(medium) scheme(s1color) graphregion(lcolor(white)) altshrink
	
	graph save "Figure_fi_comned" 
	