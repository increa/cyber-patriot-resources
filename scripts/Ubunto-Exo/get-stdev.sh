#! /bin/bash
#set -x
#
# Usage:  $ ./get-stdev.sh
# This script pull standard deviation from the buyupside.com website.  Results are dollar denominated.  One problem is the results are not normalized
# against stock price, so stocks with larger prices will naturally have larger stnadard deviations.  The financial community uses the word "Volatility" to
# refer to relative standard deviation.  See the script get-variation.sh
#
# 15 May 2018, 3 Sep 2018.
#
for i in SPY ESLT AFG AAPL ABB AFG BABA BHP CNHI EBS HACK HRS HSY IAU INVH KEMQ NPSNY NVG TCEHY ABT ARE CAF KBA RCS RTN TWO UNP
do
curl -s https://www.buyupside.com/calculators/volatilitycalculatorincludequandl.php?symbol1=$i\&numberyears=1 | grep Deviation | sed 's/.*blank>\([A-Za-z]\+\).*Deviation.*right>\(\$[0-9\.]\+\).*/\1 has Standard Deviation \2/'
done

