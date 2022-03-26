#!/bin/bash
#RMA script that puts distributor, timestamp, desription, and RMA in txt file


today=$(date)

echo "Distibutor:"
read dist
echo "Contact Person"
read person
echo "Description:"
read desc
echo -e "\n********************************************" >> ~/Documents/game_dist/$dist.txt
echo -e "*****************Call Log*******************\n" >> ~/Documents/game_dist/$dist.txt
echo "Date:" "$today" >> ~/Documents/game_dist/$dist.txt
echo "Contact person:"  $person >> ~/Documents/game_dist/$dist.txt
echo "Description:"$desc >> ~/Documents/game_dist/$dist.txt
echo -e "********************************************\n" >> ~/Documents/game_dist/$dist.txt

