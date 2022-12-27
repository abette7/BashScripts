#!/bin/bash
for var in "$@"
do
buyer=$(cat $var | grep 'Buyer   ' | sed -e 's/ \{2,\}/ /g' | sed 's/(.*//' | sed 's/^......//')
city=$(cat $var | grep 'City' | sed -e 's/ \{2,\}/ /g' | sed 's/^.*City//' | sed 's/^.//')
state=$(cat $var | grep 'province' | sed -e 's/ \{2,\}/ /g' | sed 's/^.*State\/province//' | sed 's/^.//' | cut -c1-2)
date=$(cat $var  | grep 'Date buyer paid' | sed -e 's/ \{2,\}/ /g' -e 's/^.*Date buyer paid//' -e 's/^.//')
items=$(cat $var | grep '\#' | sed -e 's/ \{2,\}/ /g' -e 's/.$.*//' -e 's/^.//')
itemTotal=$(cat $var |  grep '\$' | grep 'Shipping' | sed -e 's/ \{2,\}/ /g' -e 's/.Shipping.//')
echo "$buyer,$city,$state,$date,$items,$itemTotal" >> list.csv
#echo "$buyer"
#echo "$city"
#echo "$state"
#echo "$date"
#echo "$items"
#echo "$itemTotal"
done
