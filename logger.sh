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
head -n -5 index.html > temp.txt
cat temp.txt > index.html
echo "<div class="entry" mood="$md">" >> index.html
echo "   <span id="year">$yr</span>" >> index.html
echo "   <span id="month">$mn</span>" >> index.html
echo "   <span id="day">$dy</span>" >> index.html
echo "   <span id="desc">$entry</span>" >> index.html
echo "   <span id="todo">$td</span>" >> index.html
echo "   <span id="time">`date`</span>" >> index.html
echo "</div><p>" >> index.html
echo " " >> index.html
echo "</body>" >> index.html
echo " " >> index.html
echo "<footer>" >> index.html
echo "</footer>" >> index.html
echo "</html>" >> index.html
