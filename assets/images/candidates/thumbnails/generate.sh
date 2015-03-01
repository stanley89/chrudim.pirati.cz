#!/bin/bash
#Skript pro generování miniatur fotek kandidátů na titulní stránku

cd ../images
mogrify -format jpg -path ../thumbnails -thumbnail 56 *.jpg
