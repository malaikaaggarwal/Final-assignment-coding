*import data
replace center1distance = subinstr(center1distance, "miles", "",.) 
replace center1distance = subinstr(center1distance, "mile", "",.)
destring center1distance, gen (numcenter1distancen)
*this command would remove the word miles from the string variable center1distance*
replace center2distance = subinstr(center2distance, "miles", "",.)
replace center2distance = subinstr(center2distance, "mile", "",.)
destring center2distance, gen (num2center2distancen)

*to check for missing values
mdesc numcenter1distancen num2center2distancen
*to drop missing value 
drop if missing(num2center2distancen)

*to label variables
lab var numcenter1distancen "Distance from center"
lab var num2center2distancen "Distance from other attractions"

*creating id for countries
gen id=.
replace id = 1 if addresscountryname== "Netherlands"
replace id = 2 if addresscountryname== "Greece"
replace id = 3 if addresscountryname== "Spain"
replace id = 4 if addresscountryname== "Serbia"
replace id = 5 if addresscountryname== "Germany"
replace id = 6 if addresscountryname== "France"
replace id = 8 if addresscountryname== "Slovakia"
replace id = 9 if addresscountryname== "Finland"
replace id = 10 if addresscountryname== "Croatia"
replace id = 11 if addresscountryname== "Poland"
replace id = 12 if addresscountryname== "Austria"
replace id = 13 if addresscountryname== "Lithunia"
replace id = 14 if addresscountryname== "Malta"
replace id = 15 if addresscountryname== "Estonia"
replace id = 16 if addresscountryname== "Sweden"
replace id = 17 if addresscountryname== "Russia"
replace id = 18 if addresscountryname== "Bulgaria"
replace id = 19 if addresscountryname== "Italy"
replace id = 20 if addresscountryname== "Latvia"
replace id = 21 if addresscountryname== "Czech Republic"
replace id = 22 if addresscountryname== "Belarus"
replace id = 23 if addresscountryname== "Portugal"
replace id = 24 if addresscountryname== "Ukraine"
replace id = 25 if addresscountryname== "Turkey"
replace id = 26 if addresscountryname== "Ireland"
replace id = 27 if addresscountryname== "Denmark"
replace id = 28 if addresscountryname== "Hungary"
replace id = 29 if addresscountryname== "Romania"
replace id = 30 if addresscountryname== "Belgium"
replace id = 31 if addresscountryname== "United Kingdom"
replace id = 32 if addresscountryname== "Lithuania"
replace id = 38 if addresscountryname== "Cyprus"
replace id = 33 if addresscountryname== "Riga"
replace id = 34 if addresscountryname== "Jurmala"
replace id = 35 if addresscountryname== "Rome"
replace id = 36 if addresscountryname== "Ciampino"
replace id = 37 if addresscountryname== "Fiumicino"
replace id = 37 if addresscountryname== "Fiumicino (RM)"
replace id = 39 if addresscountryname== "Egypt"

lab var id "country id"

sort id
save clean-data













	 





