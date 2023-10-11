#!/bin/bash

for i in /tmp/*_[xy]*.csv; do
   PNG=~/printer_data/config/input_shaper/`basename $i .csv`.png
   if [ ! -f "$PNG" ]; then
     echo "Processing $i"
     ~/klipper/scripts/calibrate_shaper.py $i -o $PNG
   fi
done