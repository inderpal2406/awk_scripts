#!/usr/bin/env bash

# This script will find the top three consumers of disk space from the / directory.
# These consumers can be a directory or individual file.
# It'll output the results and ask if we want to mail the results.

# Defining functions
mail_function ()
{
	echo -n "Do you want to mail the report? Enter Y/N: "
	read choice
	if [ $choice == "Y" ]
	then
		echo -n "Please enter the mail id: "
		read mail_id
		mailx -s "Disk usage report" $mail_id < $PWD/awk_output.txt
	elif [ $choice == "N" ]
	then
		echo "Okay we'll not mail the report."
	else
		echo "Wrong input. Please enter either Y or N only."
		echo "Recalling mail function."
		mail_function
	fi
}

# Script starts here
clear
echo "This script will display top three consumers of / directory. Press enter to continue."
read
echo
sudo du -sk /* 2>/dev/null | sort -nr | head -3 > $PWD/temp.list 
cat $PWD/temp.list | awk -f $PWD/top_three.awk > $PWD/awk_output.txt
cat $PWD/awk_output.txt
echo
mail_function
rm $PWD/temp.list $PWD/awk_output.txt
echo
echo "The script ends here."
