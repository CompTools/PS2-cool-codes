#!/usr/bin/bash

late_flights=0
ontime_flights=0
grep GNV.*ATL /ufrc/bsc4452/share/Class_Files/data/flights.May2017-Apr2018.csv | cut -f 24 -d "," \
| while read i
do
  if [ "$i" == "0.00" ]
  then
   echo "On time"
ontime_flights=$((ontime_flights+1))
  else
   echo "late"
late_flights=$((late_flights+1))
fi

echo "Late flights: $late_flights"
echo "Ontime flights: $ontime_flights"
done

