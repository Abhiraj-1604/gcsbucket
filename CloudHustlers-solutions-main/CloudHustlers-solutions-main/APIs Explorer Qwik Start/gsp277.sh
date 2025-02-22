#!/bin/bash
# Define color variables

BLACK=`tput setaf 0`
RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
BLUE=`tput setaf 4`
MAGENTA=`tput setaf 5`
CYAN=`tput setaf 6`
WHITE=`tput setaf 7`

BG_BLACK=`tput setab 0`
BG_RED=`tput setab 1`
BG_GREEN=`tput setab 2`
BG_YELLOW=`tput setab 3`
BG_BLUE=`tput setab 4`
BG_MAGENTA=`tput setab 5`
BG_CYAN=`tput setab 6`
BG_WHITE=`tput setab 7`

BOLD=`tput bold`
RESET=`tput sgr0`
#-----------------------------------Welcome to Cloud Hustlers--------------------------#

cd ~
curl -LO https://raw.githubusercontent.com/Abhishek-kumar-202063/Cloud-Hustlers-Creativity/refs/heads/main/subscribe.sh
chmod +x subscribe.sh
./subscribe.sh

echo "${BG_GREEN}${BOLD}Starting Execution${RESET}"

export BUCKET="$(gcloud config get-value project)"         

gsutil mb -p $BUCKET gs://$BUCKET-bucket

curl -LO raw.githubusercontent.com/Abhishek-kumar-202063/Arcade_Labs_Solutions/main/APIs%20Explorer%20Qwik%20Start/demo-image.jpg

gsutil cp demo-image.jpg gs://$BUCKET-bucket/demo-image.jpg

gsutil acl ch -u allUsers:R gs://$BUCKET-bucket/demo-image.jpg

echo "${BG_BLUE}${BOLD}Congratulations For Completing The Lab !!!${RESET}"


cd ~
curl -LO https://raw.githubusercontent.com/Abhishek-kumar-202063/Cloud-Hustlers-Creativity/refs/heads/main/welcome.sh
chmod +x welcome.sh
./welcome.sh
#-------------------------------------Thanks for Joining Cloud Hustlers---------------------------------------#