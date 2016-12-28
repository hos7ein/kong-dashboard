#!/bin/bash

#############################################################################################################################
# this script for get and set username and password for access to kong dashboard and then build docker image of Dockerfile. #
#############################################################################################################################

read -p "Enter User Name: " user_name
read -p "Enter Password: " password

sed -i "s/user/$user_name/g"      Dockerfile
sed -i "s/password/$password/g"   Dockerfile

docker build -t docker-kong-dashboard .
