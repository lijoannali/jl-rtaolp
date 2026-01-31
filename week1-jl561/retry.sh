#!/usr/bin/env bash

RETRY=1
RUNS=0
START=$(date +%s)

while [ true ] 
do 
   ((RUNS++))
   #Must run the line to be evaluated RIGHT BEFORE before checking $?, or save $?
   bash "$1" > stdout.log 2> stderr.log #Redirect output
   if [ $? -ne 0 ]; #If script had an error
   then 
      echo "Statistics:"
      echo "Successful runs: "$(($RUNS - 1))"" #Use $(( )) to expand arithmetic
      echo "Failed on run: $RUNS"
      break
   fi
   echo "Run $RUNS: success" 
done
END=$(date +%s)
echo "- Total time: "$(($END - $START))" seconds" 
echo "Error output:"
cat  stderr.log 
echo "Standard output from failed run:"
cat  stdout.log 
