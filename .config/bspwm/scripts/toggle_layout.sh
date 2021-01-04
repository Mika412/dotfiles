#!/usr/bin/env bash
key=`xmodmap -pke | grep -w "59" | awk '{print \$NF}'`
## If this is the "us" layout, that will return "less"

if [ $key == "less" ]; then
    setxkbmap pt
    ## Add other things to be done here
else
    setxkbmap us
    ## Add other things to be done here
fi
