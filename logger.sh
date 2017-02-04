#!/bin/bash

echo -n "Year: "
read yr
echo -n "Month: "
read mn
echo -n "Day: "
read dy
echo "Entry:"
read entry
echo -n "TODO: "
read td;
echo -n "How was your day? (from 1 - 100, 10 being the highest): "
read md
head -n -1 log.xml > temp.txt
cat temp.txt > log.xml
echo "<entry>" >> log.xml
echo "   <year>$yr</year>" >> log.xml
echo "   <month>$mn</month>" >> log.xml
echo "   <day>$dy</day>" >> log.xml
echo "   <desc>$entry</desc>" >> log.xml
echo "   <todo>$td</todo>" >> log.xml
echo "   <mood>$md</mood>" >> log.xml
echo "</entry>" >> log.xml
echo " " >> log.xml
echo "</journal>" >> log.xml
