#!/bin/bash
declare -A die_rolls
key=0
 max_1=0
 max_2=0
 max_3=0
 max_4=0
 max_5=0
 max_6=0
 while [ true ] 
  do
    roll_die=$((1+RANDOM%6)) 
    die_rolls[$key]=$roll_die 
   ((key++)) 

case "${die_rolls[$(($key-1))]}" in 

1) # when it rolls 1
((max_1++)) 
sum1=$(($sum1+$roll_die)) 
   if [ $sum1 -eq $(($roll_die*10)) ] 
   then
      max_reached=1
      break; 
  fi
;;

2)
((max_2++))
sum2=$(($sum2+$roll_die))
   if [ $sum2 -eq $(($roll_die*10)) ]
   then
   max_reached=2
   break;
   fi
;;

3)
((max_3++))
sum3=$(($sum3+$roll_die))
  if [ $sum3 -eq $(($roll_die*10)) ]
  then
  max_reached=3
  break;
  fi
;;

4)
((max_4++))
sum4=$(($sum4+$roll_die))
if [ $sum4 -eq $(($roll_die*10)) ]
then
max_reached=4
break;
fi
;;
