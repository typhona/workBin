#!/bin/bash
#RMA script that puts distributor, timestamp, desription, and RMA in txt file


today=$(date)

echo "Distibutor:"
read dist
echo "Part Number:"
read pn
echo "Description:"
read desc
echo "Price"
read price
echo -e "\n********************************************" >> ~/Documents/game_dist/$dist.txt
echo -e "**************Parts Order*******************" >> ~/Documents/game_dist/$dist.txt
echo -e "********************************************" >> ~/Documents/game_dist/$dist.txt
echo "Date:" "$today" >> ~/Documents/game_dist/$dist.txt
date >> ~/Documents/game_dist/$dist.txt
echo "Part Number:"  $pn >> ~/Documents/game_dist/$dist.txt
echo "Description:"$desc >> ~/Documents/game_dist/$dist.txt
echo "Price:"$price >> ~/Documents/game_dist/$dist.txt
echo -e "********************************************\n" >> ~/Documents/game_dist/$dist.txt

