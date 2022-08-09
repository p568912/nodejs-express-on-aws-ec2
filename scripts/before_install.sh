#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
# . ~/.nvm/nvm.sh
# # nvm install node
nvm install 16
# sudo wget https://nodejs.org/dist/latest-v16.x/node-v16.16.0-linux-x64.tar.gz
# tar zvxf node-v16.16.0-linux-x64.tar.gz

#create our working directory if it doesnt exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
