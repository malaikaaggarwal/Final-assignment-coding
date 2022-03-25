*for loops
sysuse auto.dta

 foreach m in price mpg {
  2. rename `m' `m'_78
  3. }
 *to renamw variable price
