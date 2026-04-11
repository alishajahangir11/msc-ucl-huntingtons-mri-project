capture program drop effect
program define effect
syntax varlist(min=1 max=2) [if]
local a: word 1 of `varlist'
local b: word 2 of `varlist'
xtgls `a' group age_v1 i.sex `if'  , panels(het)
scalar difference = _b[group]
matrix A = e(Sigma)  
scalar sd1 = sqrt(A[2,2]) 

estadd scalar es = difference/sd1

end

/* the first two lines define the program. The next 3 lines define that you can put two variables in as input (though actually we only use one.. ive just adapted this from another program which took two). 
Line 6 is the main command which you will recognise. It takes input `a' - which will be your thickness variable when you call the program from the do file, but you dont need to change it in here! 
In here, you will need to edit group, age, sex and site to be the names of whatever you call these variables in your data set (or rename to these in your dataset!) 

the next bit pulls out the between group difference and the standard deviation in the controls from the place they are stored, and creates the effect size and calls it es, and stores it as an output which then feeds into 
the bootstrap command in the main do file. 
If you do edit the variable names in this program, you need to save it and press run before you try and call it from the other file, as if not it will run the previous version*/ 
 
