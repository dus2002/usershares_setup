#!/bin/bash

unset $REPLY
read -p "Type the name of your normal user: "
 
# Set variables
USERSHARES_DIR="/var/lib/samba/usershares"
USERSHARES_GROUP="sambashare"

# Setup
mkdir -p ${USERSHARES_DIR}
groupadd ${USERSHARES_GROUP}
chown root:${USERSHARES_GROUP} ${USERSHARES_DIR}
chmod 01770 ${USERSHARES_DIR}
usermod -a -G ${USERSHARES_GROUP} ${REPLY}

