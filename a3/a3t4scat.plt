set style fill transparent solid 0.2 noborder

set datafile separator ','

set terminal pngcairo
set out 'a3t4.png'

set title "Correlation between the travel distance and the total amount paid in August, 2019"
set xlabel "Distance"
set ylabel "Averaged total amount"

NO_ANIMATION = 1
set autoscale x
set autoscale y

plot 'a3q4.dat' using 1:2 with circles lc rgb 'red' title "Correlation between distance and amount"
