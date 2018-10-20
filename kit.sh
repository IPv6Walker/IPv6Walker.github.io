#!/bin/bash

#cd media/css
#sass style.scss style.css
#cd ../..
#rm -rf ../biki.ynewtime.com/_posts
# rm -rf ../biki.ynewtime.com/media
#cp -r _posts ../biki.ynewtime.com/
# cp -r media ../biki.ynewtime.com/media
git add .
if [ ! $1 ]
then
    git commit -m "./kit.sh auto commit"
else
    git commit -m "{$1}"
fi
git push
# jekyll serve --incremental