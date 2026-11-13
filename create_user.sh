#!/bin/bash

<<msg

	This shell script for Creating user
	Added To github

msg


echo "=================== Creation Of User ===================="

read -p "Enter username : " username
read -p "Enter Password : " password

sudo useradd -m  "$username"
echo -e "$password\n$password" | sudo passwd "$username" 

echo "=================== Creation Of user Completed ============"
