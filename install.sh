#Install Ubuntu 18.04 LTS and Install Apps
#update and upgrade
sudo apt-get update && sudo apt-get upgrade

#Install Node.js And Yarn
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo add-apt-repository ppa:zeal-developers/ppa
sudo add-apt-repository ppa:ondrej/php 

#Install Packages
sudo apt install -y software-properties-common apt-transport-https ca-certificates gnupg-agent default-jdk default-jre build-essential xterm net-tools libnss3-tools libpam0g:i386 libx11-6:i386 libstdc++6:i386 libstdc++5:i386 vim zip unzip ssh git wget curl nodejs yarn docker-ce docker-ce-cli containerd.io docker-compose npm zsh transmission inkscape scribus gimp filezilla zsnes klavaro obs-studio usb-creator-gtk vlc exuberant-ctags ncurses-term snapd zeal php php-curl libapache2-mod-php php-fpm php-mysql php-gd remmina

#Install VPN
sudo ./snx_install.sh
./cshell_install.sh

#Install Google Chrome, VScode
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i google-chrome-stable_current_amd64.deb 
sudo dpkg -i code_1.79.2-1686734195_amd64.deb
rm google-chrome-stable_current_amd64.deb code_1.79.2-1686734195_amd64

#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Install WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

#Install Gulp
sudo npm install -g gulp

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc
source ~/.zshrc

# Setting to Terminal to use the ohmyzsh, which is the default.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install Zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

#Define ohmyzsh with Defeaut
chsh -s /bin/zsh 

# Remove Apache and Aplicattions
sudo apt remove apache2 xfburn abiword gnumeric -y

# Docker Configs
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker

#UbuntuPro
sudo pro attach C134iikxRsguiQxrDa7BphWRrs5NZr
sudo apt update && sudo apt upgrade -y

#Generate SSH Key
ssh-keygen