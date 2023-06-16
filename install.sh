# Update
sudo apt update & sudo apt upgrade -y 

#Install Requisitos para a VPN Senac
sudo apt install software-properties-common apt-transport-https wget curl build-essential xterm libnss3-tools

#Instalação do Java

#cd ~
#curl -s "https://get.sdkman.io" | bash
#source "$HOME/.sdkman/bin/sdkman-init.sh"

#sdk list java
#sdk install java 20-open

#Instalação SSL
sudo apt-get install xterm
sudo apt-get install libnss3-tools openssl


# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb && rm google-chrome-stable_current_amd64.deb

#Install aps via Repository 
sudo apt install -y default-jdk default-jre libpam0g:i386 libx11-6:i386 libstdc++6:i386 libstdc++5:i386 vim zip unzip ssh git wget net-tools npm zsh docker docker-compose transmission inkscape scribus filezilla zsnes klavaro obs-studio usb-creator-gtk vlc exuberant-ctags ncurses-term snapd

#Zeal APP and PHP
sudo add-apt-repository ppa:zeal-developers/ppa
sudo add-apt-repository ppa:ondrej/php 
sudo apt update 
sudo apt install -y zeal php php-curl libapache2-mod-php php-fpm php-mysql php-gd

#Install Composer
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Install WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Install packages with snap
sudo snap install node --classic
sudo snap install spotify
sudo snap install discord
sudo snap install postman
sudo snap install poedit
sudo snap install code --classic
sudo snap install photogimp
sudo snap install zoom-client

#Install Yarn
sudo curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install && sudo apt yarn -y

# NPM Installs
sudo npm install -g gulp

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc
source ~/.zshrc

#Config PhotoGimp
snap connect photogimp:removable-media :removable-media

# Install Extensions to vscode and configure themes
#code --install-extension adobe.xd
#code --install-extension anthonydiametrix.ACF-Snippet
#code --install-extension box-of-hats.minify-selection
#code --install-extension christian-kohler.path-intellisense
#code --install-extension claudiosanches.woocommerce
#code --install-extension claudiosanches.wpcs-whitelist-flags
#code --install-extension dakara.transformer
#code --install-extension donjayamanne.jquerysnippets
#code --install-extension dracula-theme.theme-dracula
#code --install-extension dzhavat.bracket-pair-toggler
#code --install-extension eamodio.gitlens
#code --install-extension EditorConfig.EditorConfig
#code --install-extension esbenp.prettier-vscode
#code --install-extension formulahendry.auto-rename-tag
#code --install-extension GitHub.vscode-pull-request-github
#code --install-extension hollowtree.vue-snippets
#code --install-extension JakeWilson.vscode-cdnjs
#code --install-extension jock.svg
#code --install-extension johnbillion.vscode-wordpress-hooks
#code --install-extension jpagano.wordpress-vscode-extensionpack
#code --install-extension laurencebahiirwa.classicpress-snippets
#code --install-extension liuji-jim.vue
#code --install-extension mrmlnc.vscode-scss
#code --install-extension MS-CEINTL.vscode-language-pack-pt-BR
#code --install-extension ms-python.python
#code --install-extension onecentlin.laravel-blade
#code --install-extension pnp.polacode
#code --install-extension ritwickdey.LiveServer
#code --install-extension sibiraj-s.vscode-scss-formatter
#code --install-extension tungvn.wordpress-snippet
#code --install-extension wordpresstoolbox.wordpress-toolbox
#code --install-extension xabikos.JavaScriptSnippets
#code --install-extension xdebug.php-debug
#code --install-extension Zignd.html-css-class-completion

#Remove Apache
sudo apt remove apache2 xfburn abiword gnumeric -y

# Setting to Terminal to use the ohmyzsh, which is the default.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install Zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

#Define ohmyzsh with Defeaut
chsh -s /bin/zsh 

#Generate SSH Key
#ssh-keygen


# Docker Configs
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
