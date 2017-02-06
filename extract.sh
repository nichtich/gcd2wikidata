#!/bin/bash

zcat current.zip \
    | sed -n -e '/CREATE TABLE.*`gcd_series`/,/CREATE TABLE/p' \
    | zip > series.zip

zcat series.zip | ./mysqldump_to_csv.py > series.csv

catmandu convert CSV --header 0 --fields 'id,name,x,y,a,z,b' \
    --fix 'move_field(a,d.0) unless in(d.0,b) move_field(b,d.1) end join_field(d,"-")' \
              to TSV --header 0 --fields 'id,name,d' \
              < series.csv > series.tsv
