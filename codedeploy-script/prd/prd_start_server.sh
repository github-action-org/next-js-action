#!/bin/bash

# 환경 변수 설정
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # nvm 로드
export PATH="$PATH:/root/.nvm/versions/node/v18.19.1/bin"
source ~/.bashrc


echo "npm , node , yarn , nvm version check"
npm --version
node --version
yarn --version
nvm --version


# install the application using npm
# we need to traverse to where the application bundle is copied too.
echo installing application with npm
cd /data/app/next-js-action/

# sudo rm -rf /data/app/lugstay-api/node_modules 
# sudo rm -rf /data/app/lugstay-api/dist
# echo "yarn install"
# yarn install
# echo "yarn build:prd"
# yarn build:prd

echo "chekcing application service .... "
echo "**********************************"
echo "********** Env setting ***********"
service_name="next-js-action"
echo "**********************************"
echo "********** Env setting ***********"
if pm2 list | grep -q "$service_name"; then
    pm2 delete "$service_name"
else
    echo "$service_name" not ruunning....
fi

echo "start application service .... "
#pm2 start --name "$service_name" yarn -- start:prd
pm2 start --interpreter bash --no-autorestart --name "$service_name" -c "yarn start:prd"