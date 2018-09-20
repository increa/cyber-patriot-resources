#! /bin/bash
#set -x
#
# usage:  $ ./gs.sh {stock symbol} {years}
#
# 15 May 2018
#
debug=1

for i in `seq 1 4`;
do
curl -s https://www.buyupside.com/calculators/volatilitycalculatorincludequandl.php?symbol1=$1\&numberyears=$i | tee ${i}.stdout | grep Deviation | perl -pe "s/></>\n</g" | awk "/Stock Standard Deviation/,/Stock Coefficient/ {print}" | egrep "<div align=right>" | cut -f2 -d'>' | cut -f1 -d'<'
done

