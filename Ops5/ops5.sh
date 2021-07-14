#!/bin/bash


#    Script Name: Ops Challenge 5
#    Author: Jason Kingery
#    Date of last revision 06/14/21
#    Description of purpose: 
                            #Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
                            #Use a loop in your script.





process=$(ps aux) #ps aux lists all processes

#main
echo -e "$process"
echo -e "\nAdding process to output.txt for debug"
cat /dev/null >output.txt #deletes any content currently in output.txt 
echo -e "$process" >>output.txt #prints PID in output.txt 

kill_reset () {
	echo -e "\nShall we kill-k or gracefully kill-g a process? k/g?" 
	read -r option #reads user input
	while :
	do
		if [ "$option" == k ]; then
			kill_process #calls function kill_process
			break #needed to break loop just in case
		else
			grace_process #calls function grace_process
		fi
	done

}

#kill the process
kill_process() {
	if [ "$option" == k ]; then
		echo -e "Select process found in output.txt"
		read -r PID
		kill -9 "$PID" #kill the process

		kill_reset #go back to kill_rest
	fi
}

#reset the process
grace_process () {
	if [ "$option" == g ]; then
		echo -e "Select Process found in output.txt"
		read -r PID
		kill -15 "$PID" #sends SIGTERM to PID (gracefully kill)
	
		kill_reset #go back to kill_reset
	fi
}

kill_reset