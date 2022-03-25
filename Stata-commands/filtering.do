*to prepare for final analysis

*already filtered obs while editing
*drop if missing(num2center2distancen)

*transforming variable starrating into percentage
gen starrate2 = starrating/5*100
lab var starrate2 "starrating in %"
save clean-data, replace
