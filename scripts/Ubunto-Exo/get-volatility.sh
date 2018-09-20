#! /bin/bash
#set -x
#
# usage:  $ ./get-volatility.sh
# This script downloads relative standard deviation (aka Volatility) from the website buyupside.com.  Fixed time frame of 1 year is used..
#
# 15 May 2018,  3 Sept 2018
#
echo 'Stock, 1yRSD'
for i in SPY ESLT AAPL ABB AFG BABA BHP CNHI EBS HACK HRS HSY IAU INVH KEMQ NPSNY NVG TCEHY ABT ARE CAF KBA RCS RTN TWO UNP KEMQ
do
curl -s https://www.buyupside.com/calculators/volatilitycalculatorincludequandl.php?symbol1=$i\&numberyears=1 | grep Variation | sed 's/.*blank>\([A-Za-z]\+\).*Variation.*right>\([0-9\.]\+\).*/\1, \2/'
done

