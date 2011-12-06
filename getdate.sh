#!/bin/bash

# print work days from 16 of last month to 15 of this month
# ideal <idealities@gmail.com>

date=$(date +"%Y%m%d")
if [ ! -z $1 ]; then
    date=$1;
fi

curryear=$(date --date=$date +"%Y")
currmonth=$(date --date=$date +"%m")
prevmonth=$(expr $currmonth - 1)
prevyear=$curryear
if [ $prevmonth == 0 ]; then
    prevyear=$(expr $prevyear - 1);
fi

monthdays=(-1 31 28 31 30 31 30 31 31 30 31 30 31)

day=16
days=${monthdays[$prevmonth]}
prevmonth=$(printf '%02d' $prevmonth)
echo -n $(date --date=$prevyear$prevmonth$day +"%B")
while [ $day -le $days ]; do
    weekday=$(date --date=$prevyear$prevmonth$day +"%u")
    if [[ $weekday -ne 6 && $weekday -ne 7 ]]; then
        echo -n $(date --date=$prevyear$prevmonth$day +"%d")"，";
    fi
    day=$(expr $day + 1)
done

day="01"
currmonth=$(printf %02d $currmonth)
echo -n $(date --date=$curryear$currmonth$day +"%B")
while [ $day -le 15 ]; do
    day=$(printf '%02d' $day)
    weekday=$(date --date=$curryear$currmonth$day +"%u")
    if [[ $weekday -ne 6 && $weekday -ne 7 ]]; then
        echo -n $(date --date=$curryear$currmonth$day +"%e");
    fi
    if [[ $weekday -lt 6 && $day != 15 ]]; then
        echo -n "，";
    fi
    if [ $day -eq 15 ]; then
        echo;
    fi
    day=$(expr $day + 1)
done

