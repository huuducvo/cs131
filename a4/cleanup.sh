#!/bin/bash

#Delete , and " as separators and replace them with ; for columns and , for inside column. Then delete Director: and Stars: to clean up STARS column.
awk '{gsub(/",/,"\",\"");gsub(/,"/,"\",\"");gsub(/","/,";");gsub(/"/,"");print}' movies.csv | awk 'NR==1 {gsub(/,/,";");print} NR>1 {print}' | awk '{gsub(/Director:/,"");gsub(/Stars:/,"");print}' > moviesfix.csv
