set boxwidth 0.2 relative
set style fill solid 1.0
set style histogram


set terminal pngcairo
set out 'hm.png'

set title "Number of saving years of male employee to buy house"
set xlabel "House value"
set ylabel "Years"

set yrange [0:6]
set xrange [0:600000]

plot 'm.txt' using 1:2 with boxes lc rgb 'blue' title "Correlation between house value and saving years"
