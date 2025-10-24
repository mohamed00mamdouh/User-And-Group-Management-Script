#!/bin/bash

inp=0

while [ $inp -ne 3 ]
do
	echo "=>Menu<="
	echo "1)user management"
	echo "2)group management"
	echo "3)exit"
	read -p "choose an option:" inp

	if [ $inp -eq 1 ]
	then
		inp2=0
		while [ $inp2 -ne 9 ]
		do
			echo "===================================="
			echo "==Welcome To User Management Menue=="
		        echo "===================================="	
			echo "1-Add user"
			echo "2-Delete user"
			echo "3-Change primary group for a user"
			echo "4-Add user to secondary group"
			echo "5-Disable user"
			echo "6-Enable user"
			echo "7-Create or change password"
			echo "8-List users"
			echo "9-Back"
			read -p "choose operation:" inp2
			
			if [ $inp2 -eq 1 ]
			then
				read -p "Enter user name:" name
				sudo useradd $name
			elif [ $inp2 -eq 2 ]
                        then
                                read -p "Enter user name:" name
				sudo userdel $name
			elif [ $inp2 -eq 3 ]
			then
				read -p "Enter user name:" name
				read -p "Enter group name:" grp
				sudo usermod -g $grp $name
			elif [ $inp2 -eq 4 ]
                        then
                                read -p "Enter user name:" name
				read -p "Enter group name:" grp
				sudo usermod -G $grp $name
			elif [ $inp2 -eq 5 ]
                        then
                                read -p "Enter user name:" name
				sudo usermod -L $name
			elif [ $inp2 -eq 6 ]
                        then    
                                read -p "Enter user name:" name 
				sudo usermod -U $name
			elif [ $inp2 -eq 7 ]
			then
                                read -p "Enter user name:" name
				sudo passwd $name
			elif [ $inp2 -eq 8 ]
                        then    
                                echo "=========Users========="
				cut -d : -f 1 /etc/passwd
				echo "======================="
			elif [ $inp2 -eq 9 ]
			then 
				echo "->Going back<-"
			else 
				echo "Invalid Option"
			fi
		done
	
	elif [ $inp -eq 2 ]
	then
	       inp2=0	
		while [ $inp2 -ne 4 ]
		do
			echo "==============================="
			echo "==Welcome To Group Management=="
			echo "==============================="
			echo "1-Add group"
			echo "2-Delete group"
			echo "3-List groups"
			echo "4-Back"
			read -p "Choose Operation:" inp2
			if [ $inp2 -eq 1 ]
			then
				read -p "Enter group name:" grp
				sudo groupadd $grp
			elif [ $inp2 -eq 2 ]
			then
				read -p "Enter group name:" grp
				sudo groupdel $grp
			elif [ $inp2 -eq 3 ]
			then
				cut -d : -f 1 /etc/group
			elif [ $inp2 -eq 4 ]
			then
				echo "->Ging back<-"
			else
				echo "Invalid option"
				

			fi
		done
	fi
done