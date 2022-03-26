#!/bin/bash
#RMA script that puts distributor, timestamp, desription, and RMA in txt file

today=$(date)

echo "Distibutor:"
read dist
echo "Descritption:"
read desc
echo "RMA:"
read rma
echo -e "\n********************************************" >> ~/Documents/game_dist/$dist.txt
echo "Date:" "$today" >> ~/Documents/game_dist/$dist.txt
#date >> ~/Documents/game_dist/$dist.txt
echo "Descritpion:"  $desc >> ~/Documents/game_dist/$dist.txt
echo "RMA:"$rma >> ~/Documents/game_dist/$dist.txt
echo -e "********************************************\n" >> ~/Documents/game_dist/$dist.txt
