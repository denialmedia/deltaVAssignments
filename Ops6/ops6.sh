#!/bin/bash


#    Script Name: Ops Challenge 6
#    Author: Jason Kingery
#    Date of last revision 06/14/21
#    Description of purpose: 
        #Create a Bash script that detects if a file or directory exists, then creates it if it does not exist.
        #Your script must use at least one list, one loop, and one conditional.


FILE=test.txt



check_files () {
    echo -e "\n$FILE does not exist, do you want to create it? y/n"
	read -r option #reads user input
	while :
	do
		if [ "$option" == y ]; then
			touch $FILE
            echo "By the power of Greyskull, $FILE now exist."
			break #needed to break loop just in case
		else
			grace_process #calls function grace_process
		fi
	done

}

if test -f "$FILE"; then
    echo "$FILE exists."
    else
    check_files
fi