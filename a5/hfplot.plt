set style fill transparent solid 0.2 noborder


set terminal pngcairo
set out 'hf.png'

set title "Years of saving for female employee to buy house"
set xlabel "House value"
set ylabel "Years"

NO_ANIMATION = 1
set xrange [0:600000]
set yrange [0:6]


plot 'f.txt' using 1:2:(0.003*($1)) with circles lc rgb 'blue' title "Correlation between saving years and house value"
