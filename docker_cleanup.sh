#!/bin/bash
# This script help to clean up all containers and images on a given server.
# created by Mocktar TAIROU
# Greensboro, NC August, 2021
# Email: mocktar.tairou@gmail.com
# github: https://github.com/mocktar77 
sleep 2
echo " "
echo "Let's make sure you want to delete all the containers in the system"
sleep 2
echo "This is the list of the containers in the system"
sleep 2
echo "Check the list and make sure you want to delete all of them"
sleep 2
docker ps -a
sleep 5

read -p "Do you wish to delete these containers?" yn
    case $yn in
        [Yy]* ) echo "deleting containers...."; docker rm -f $(docker ps -a -q) 2>/dev/null; sleep 2;;
        [Nn]* ) exit 1;;
        * ) exit 1;;
    esac
echo "checking the containers list"
docker ps -a
sleep 2
echo " "
echo "Let's make sure you want to delete all images in the system"
sleep 2
echo "This is the list of the images in the system"
sleep 2
echo "Check it and make sure you want to delete all of them"
sleep 2
docker images
sleep 5

read -p "Do you wish to delete these images?" yn
    case $yn in
        [Yy]* ) echo "deleting images...."; sleep 2; docker rmi -f $(docker images -q) 2>/dev/null; sleep 2;;
        [Nn]* ) exit 1;;
        * ) exit 1;;
    esac
echo "checking the images list"
docker images
echo " "