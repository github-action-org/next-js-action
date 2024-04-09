#!/bin/bash

# Install Yarn
echo "Installing Yarn..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

# Install NVM (Node Version Manager)
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Load NVM script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  

# Install Node.js v18.19.1
echo "Installing Node.js v18.19.1..."
nvm install v18.19.1

# Set default Node.js version
nvm alias default v18.19.1

echo "Yarn, NVM, and Node.js v18.19.1 installed successfully."


# Install pm2 globally
echo "Installing pm2 globally..."
sudo npm install -g pm2

# Display pm2 version
pm2_version=$(pm2 -v)
echo "pm2 version $pm2_version installed successfully."
