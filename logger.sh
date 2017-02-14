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
head -n -5 log.html > temp.txt
cat temp.txt > log.html
echo "<div class="entry" mood="$md">" >> log.html
echo "   <span id="year">$yr</span>" >> log.html
echo "   <span id="month">$mn</span>" >> log.html
echo "   <span id="day">$dy</span>" >> log.html
echo "   <span id="desc">$entry</span>" >> log.html
echo "   <span id="todo">$td</span>" >> log.html
echo "   <span id="time">`date`</span>" >> log.html
echo "</div><p>" >> log.html
echo " " >> log.html
echo "</body>" >> log.html
echo " " >> log.html
echo "<footer>" >> log.html
echo "</footer>" >> log.html
echo "</html>" >> log.html
