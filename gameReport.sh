#! /bin/bash

_myDate=$(date +"%m-%d-%Y")

#create array bassed on files in game_dist directory
cd ~/Documents/game_dist/
files=(*.txt)
for i in "${files[@]}";
do echo "*****************************************************************************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
echo "********************************* Report for:" "$_myDate" "********************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
echo -e "*****************************************************************************************\n" >> ~/Documents/game_dist/"$_myDate"_report.txt
echo "**************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
echo "*          $i        *" >> ~/Documents/game_dist/"$_myDate"_report.txt
echo "**************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
cat ~/Documents/game_dist/$i >> ~/Documents/game_dist/"$_myDate"_report.txt

done




#echo -e "\n**************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
#echo "*          Qubica        *" >> ~/Documents/game_dist/"$_myDate"_report.txt
#echo "**************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
#cat ~/Documents/game_dist/qubica.txt >> ~/Documents/game_dist/"$_myDate"_report.txt
#echo -e "\n**************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
#echo -e "*       Unis             *" >> ~/Documents/game_dist/"$_myDate"_report.txt
#echo -e "**************************" >> ~/Documents/game_dist/"$_myDate"_report.txt
#cat ~/Documents/game_dist/unis.txt >> ~/Documents/game_dist/"$_myDate"_report.txt



#cat ~/Documents/game_dist/"$_myDate"_report.txt
