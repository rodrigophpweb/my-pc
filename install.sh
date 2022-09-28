# Update
sudo apt update & sudo apt upgrade -y sudo apt autoremove

sudo apt install zip unzip ssh git wget curl nodejs npm zsh composer docker docker-compose transmission inkscape scribus snapd php php-xmlwriter obs-studio filezilla vlc znes

#Zeal
sudo add-apt-repository ppa:zeal-developers/ppa
sudo apt update
sudo apt install zeal

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# NPM Installs
sudo npm install -g yarn
sudo npm install -g bower
sudo npm install -g gulp

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.bashrc
source ~/.zshrc

# Install WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Install packages with snap
sudo snap install spotify
sudo snap install discord
sudo snap install postman
sudo snap install slack --classic
sudo snap install poedit
sudo snap install gitkraken --classic
sudo snap install brave
sudo snap install telegram-desktop
sudo snap install keepassxc
sudo snap install twinux
sudo snap install whatsdesk
sudo snap install lotion
sudo snap install photogimp
sudo snap install code --classic

# Install Extensions to vscode and configure themes
code --install-extension adobe.xd
code --install-extension anthonydiametrix.ACF-Snippet
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension box-of-hats.minify-selection
code --install-extension christian-kohler.path-intellisense
code --install-extension claudiosanches.woocommerce
code --install-extension claudiosanches.wpcs-whitelist-flags
code --install-extension dakara.transformer
code --install-extension dbaeumer.jshint
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.jquerysnippets
code --install-extension dracula-theme.theme-dracula
code --install-extension dzhavat.bracket-pair-toggler
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-rename-tag
code --install-extension GitHub.vscode-pull-request-github
code --install-extension hollowtree.vue-snippets
code --install-extension humao.rest-client
code --install-extension ikappas.phpcs
code --install-extension JakeWilson.vscode-cdnjs
code --install-extension jock.svg
code --install-extension johnbillion.vscode-wordpress-hooks
code --install-extension jpagano.wordpress-vscode-extensionpack
code --install-extension laurencebahiirwa.classicpress-snippets
code --install-extension liuji-jim.vue
code --install-extension mrmlnc.vscode-scss
code --install-extension ms-azuretools.vscode-docker
code --install-extension MS-CEINTL.vscode-language-pack-pt-BR
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension neilbrayfield.php-docblocker
code --install-extension onecentlin.laravel-blade
code --install-extension pnp.polacode
code --install-extension redhat.vscode-yaml
code --install-extension ritwickdey.LiveServer
code --install-extension rvest.vs-code-prettier-eslint
code --install-extension sibiraj-s.vscode-scss-formatter
code --install-extension SonarSource.sonarlint-vscode
code --install-extension stylelint.vscode-stylelint
code --install-extension TabNine.tabnine-vscode
code --install-extension techer.open-in-browser
code --install-extension tungvn.wordpress-snippet
code --install-extension wordpresstoolbox.wordpress-toolbox
code --install-extension xabikos.JavaScriptSnippets
code --install-extension xdebug.php-debug
code --install-extension Zignd.html-css-class-completion

# Config PHP Code Sniffer
composer global require squizlabs/php_codesniffer

# Setting to Terminal to use the ohmyzsh, which is the default.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

# Github CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Remove o Apache2
sudo apt remove apache2

# Docker Configs
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

#Update Finally
sudo apt update & sudo apt upgrade -y sudo apt autoremove