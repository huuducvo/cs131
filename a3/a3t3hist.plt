set boxwidth 0.6 relative
set style fill solid 1.0
set style histogram

set datafile separator ','

set terminal pngcairo
set out 'a3t3.png'

set title "Correlation between the number of passengers and the tip amount in August, 2019"
set xlabel "Number of passenger"
set ylabel "Averaged tip amount"

set yrange[0:10]

plot 'a3q3.dat' using 1:2:xtic(1) with boxes lc rgb 'blue' title "Correlation between number of passengers and tip amount"
