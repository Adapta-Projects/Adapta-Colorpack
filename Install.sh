#!/bin/bash

GREEN=`tput setaf 2`
RESET=`tput sgr0`

echo -e "${GREEN}Welcome to the Adapta-Colorpack text mode installer!\n\n\tIf the user running this script is root,the theme will go to the /usr/share/themes folder,\n\tif it is another, the theme will go to the .themes folder!\n${GREEN}${RESET}"

PREFIX="Pkg/usr/share/themes"
LOCAL="/usr/share/themes"

if [ ! $USER = "root" ]
then
    if [ ! -d /home/$USER/.themes ]
    then
        mkdir /home/$USER/.themes
        echo -e "Created ./theme\n"
    fi
    LOCAL="/home/$USER/.themes"
fi

echo "User: "$USER
echo "Local of instalation: "$LOCAL

cp -rf $PREFIX/Adapta* $LOCAL

echo -e "\nInstallation complete!"