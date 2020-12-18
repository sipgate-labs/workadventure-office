#!/bin/bash

for f in assets/*.png
do
  newFileName="$(echo $f | sed -e 's/\.png/\.converted.png/' | sed -e 's/assets\//assets-converted\//' )" ;
  echo "convert $f to $newFileName"
  ./node_modules/tile-extruder/bin/tile-extruder --tileWidth 32 --tileHeight 32 --input $f --output $newFileName
done

