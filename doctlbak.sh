#!/bin/bash
# doctl snapshot script

echo -e "\nWhich droplet would you like to create a backup for (ID)?\n"
doctl compute droplet list --format "ID, Name, PublicIPv4"

printf "\nID: "
read -r dropletid


printf "\nAdd a comment for snapshot filename (no spaces): "
read -r comment

printf "\n"

today=$(date "+%y%m%d";)
doctl compute droplet-action snapshot $dropletid  --snapshot-name $today-ID-$dropletid-$comment

printf "\n"

$SHELL
