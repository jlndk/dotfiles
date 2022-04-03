#!/bin/bash                                                                                                        

# count how many updates we have got
ups=`/usr/lib/update-notifier/apt-check --human-readable | head -1 | awk '{print $1;}'`
 
# print the results
if [ "$ups" -gt "0" ]
then
  echo "$ups Updates Available"
else
  echo "Up to date"
fi