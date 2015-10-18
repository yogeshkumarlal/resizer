#!/bin/bash
# This scripts Objective is to resize photos for faster uploading to web

echo "***********************W E L C O M E************************"
echo "AUTHOR : Yogesh K LAL"
echo "E-mail : embedded.yogesh@gmail.com"
echo "************************************************************"
DATE=$(date +%F)
for i in *.JPG ;
do
convert $i -resize 50% -quality 80% _$i;
echo “resized image _$i created.” ;
done
echo “Resizin is complite.”
echo “Moving the Resized Images to resized folder”
mkdir resized-$DATE
mv _* resized-$DATE
cd resized-$DATE
rename "s/\_//g" *.JPG
echo “Process complete
