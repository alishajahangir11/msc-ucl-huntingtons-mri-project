
*the file effect.do is a program, you need to store that and this do file in the same location, and make sure STATA is pointing to that directory (using cd "filepath"). 
/*the set of commands below should then work. 
Taking you through the bootstrap command.... 
you are wanting to bootstrap es, which is the effect size outputted from the program effect that is in the other file.  the options are reps(2000) means do 2000 replications, this is what is recommended to get a good bias corrected and accelerated
interval. bca is the bias corrected and accelerated interval option, this you ideally want, but sometimes it doesnt work. If you get an error in running it, you need
to replace it with bc, which will give you bias corrected only (and also replace in the estat line). seed(100) sets the seed which means every time you run the command you will get the same 2000 replications.
This is useful to replicate results to check, and also since you are running it for lots of regions, they are all then based on the same bootstrap samples which is good for consistency. 100 is an arbirtary choice, so change 
if you want, but just keep it set to the same thing every time you use it. 
strata(group) makes sure that the bootstrap sample samples the correct proportion of controls to HD in each replication (you need to change "group" to whatever your group variable is called, and also in the xtset line). 
After the : is the command for what you want to bootstrap. since I have named the program effect, this is what comes after in this case.  
"thickness" is the input to the command, so this would be whatever you have called your thickness variable. 
the estat bit tells the program to give the solution with the Bca confidence interval instead of the normal based. If you want to see all CIs ie normal based, percentile, bias corrected and bca,
you can write estat bootstrap, _all */ 



do effect 
xtset group
bootstrap e(es) , reps(2000) bca seed(100) strata(group): effect  transversetemporalgyrus_vol_chan          
estat bootstrap, bca 
