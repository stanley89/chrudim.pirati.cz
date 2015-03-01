#!/bin/bash
#Skript pro generování miniatur fotek kandidátů na titulní stránku

cd ../pdf
for file in *.pdf;
do
if [ "$file" == "adam-zabransky.pdf" ]; then pdftoppm -jpeg -x 20 -y 20 -W 1236 -H 1403 $file > ../images/${file%.*}.jpg;
else pdftoppm -jpeg -x 85 -y 85 -W 880 -H 1000 $file > ../images/${file%.*}.jpg;
fi
cd ../images
mogrify -resize 443x503 -quality 90 ${file%.*}.jpg
cd ../pdf
done
cd ../images

#mogrify -format jpg -path ../images -shave 36x36 -crop 100%x78%+5+5 -resize 443 -resample 300x300 -quality 90 michaela-krausova.pdf
