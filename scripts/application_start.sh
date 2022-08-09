#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/express-app

#add npm and node to path
# export NVM_DIR="$HOME/.nvm"	
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)
sudo nano ~/.bashrc
PATH=$(sed "s/\/home\/ec2-user\/\.nvm\/versions\/node\/v18.7.0\/bin://" <<< $PATH)
export PATH=$PATH:/home/ec2-user/node-v16.16.0-linux-x64/bin
# source /home/ec2-user/.bash_rc
# export PATH=/home/ec2-user/.nvm/versions/node/v16.16.0/lib/node_modules/npm:$PATH


#install node modules
npm install .

#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null & 
