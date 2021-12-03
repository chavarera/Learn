#!/bin/sh

# VERSION and Meta data
VERSION=robo3t-1.4.4-linux-x86_64-e6ac9ec.tar.gz
ROOT_FOLDER=/usr/local/bin/
NAME=robomongo

# grant permission
cd $ROOT_FOLDER
sudo chown $USER .

# Check if robo3t is already exists on path
FILE=$ROOT_FOLDER$NAME/bin/robo3t
if [ -f "$FILE" ]; then
    # Robo3t exists start application
    .$FILE
else 
    # robo3t not availble download it from source
    wget "https://download.studio3t.com/robomongo/linux/"$VERSION

    # extract robo3t and move raw file to download
    mkdir robomongo downloads
    tar zxf $VERSION --directory $ROOT_FOLDER$NAME --strip-components 1
    sudo mv $VERSION downloads

    # start rob3t after completion
    .$FILE
fi



