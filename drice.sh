#!/bin/bash

# Updates and stuff
# Feel free to comment out any of the stuff you don't want.
printf "\e [1;34 Installing Updates and stuff \e[0m"
echo ""
sudo apt update; sudo apt upgrade
sudo apt install git
sudo apt install wget
sudo apt install curl
sudo apt install vim
sudo apt install zsh
sudo apt install neovim
sudo apt install neofetch
sudo apt install pass
sudo apt install ripgrep
sudo apt install terminator
sudo apt install xset
sudo apt install redshift
sudo apt install kwrite
sudo apt install audacious
sudo apt install mystiq
sudo apt install kdenlive
sudo apt install haruna
sudo apt install kodi
sudo apt install gimp
sudo apt install ranger
sudo apt install mpv
sudo apt install simplescreenrecorder
sudo apt install vlc
sudo apt install i3
sudo apt install net-tools
sudo apt install sqlmap
sudo apt install netdiscover
sudo apt install nmap
sudo apt install wireshark
sudo apt install cmake
sudo apt install python3-venv python3-pip
sudo apt install python-dev python-pip python3-dev
sudo apt install git curl exuberant-ctags ack-grep
sudo pip3 install pynvim flake8 pylint isort
sudo apt install build-essential cmake git vim
sudo apt install nodejs
sudo apt install npm
sudo apt install openrgb
sudo apt install ckb-next

echo ""


# Download stuff from youtube
# python3 -m pip install -U yt-dlp
# Download any videos you want from YouTube, Vimeo, Odysee and more with yt-dlp: https://github.com/yt-dlp/yt-dlp#release-files
printf "\e [1;34 Installing yt-dlp, download videos from YouTube \e[0m"
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp  # Make executable

echo ""
# Download & install Electrum BTC Wallet
# Install dependencies
printf "\e [1;34 Download & install Electrum BTC Wallet \e[0m"
sudo apt-get install python3-pyqt5 libsecp256k1-0 python3-cryptography

echo ""
# download package
wget https://download.electrum.org/4.3.1/Electrum-4.3.1.tar.gz

# Verify signatures
wget https://download.electrum.org/4.3.1/Electrum-4.3.1.tar.gz.asc
gpg --verify Electrum-4.3.1.tar.gz.asc

#Install with pip
sudo apt-get install python3-setuptools python3-pip
python3 -m pip install --user Electrum-4.3.1.tar.gz



# Give the current user ownership over the options directory
sudo chown ${USER} * /opt
# Install some shortcut commands/scripts
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/f  -o  /opt/f
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/fastgrep  -o  /opt/fastgrep
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/fff  -o  /opt/fff
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/ggg  -o  /opt/ggg
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/cookiemonster  -o  /opt/cookiemonster
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/cookiesteal.txt -o  /opt/cookiesteal.txt
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/headers.txt -o /opt/headers.txt
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/headers.py  -o  /opt/headers.py
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/line_spacing.txt  -o  /opt/line_spacing.txt 
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/new  -o  /opt/new
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/printawk  -o  /opt/printawk
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/py  -o  /opt/py
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/red  -o  /opt/red
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/window_size.sh  -o  /opt/window_size.sh
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/xfh.sh -o /opt/xfh.sh
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/xmrlert  -o  /opt/xmrlert
curl -Ls https://raw.githubusercontent.com/LinuxUser255/passwordgen/master/pw1 -o /opt/pw1
curl -Ls https://raw.githubusercontent.com/LinuxUser255/passwordgen/master/pw2 -o /opt/pw2

chmod +x /opt/f 
chmod +x /opt/fastgrep
chmod +x /opt/fff
chmod +x /opt/ggg
chmod +x /opt/cookiemonster
chmod +x /opt/cookiesteal.txt
chmod +x /opt/headers.txt
chmod +x /opt/headers.py
chmod +x /opt/line_spacing.txt
chmod +x /opt/new
chmod +x /opt/printawk
chmod +x /opt/py
chmod +x /opt/red
chmod +x /opt/window_size.sh
chmod +x /opt/xfh.sh
chmod +x /opt/xmrlert
chmod +x /opt/pw1
chmod +x /opt/pw2

sudo mv /opt/f  -t /usr/bin
sudo mv /opt/fastgrep -t /usr/bin
sudo mv /opt/fff -t /usr/bin
sudo mv /opt/ggg -t /usr/bin
sudo mv /opt/cookiemonster -t /usr/bin
sudo mv /opt/cookiesteal.txt -t /usr/bin
sudo mv /opt/headers.txt -t /usr/bin
sudo mv /opt/headers.py -t /usr/bin
sudo mv /opt/line_spacing.txt -t /usr/bin
sudo mv /opt/new -t /usr/bin
sudo mv /opt/printawk -t /usr/bin
sudo mv /opt/py -t /usr/bin
sudo mv /opt/red -t /usr/bin
sudo mv /opt/window_size.sh -t /usr/bin
sudo mv /opt/xfh.sh -t /usr/bin
sudo mv /opt/xmrlert -t /usr/bin
sudo mv /opt/pw1 -t /usr/bin
sudo mv /opt/pw2 -t /usr/bin

echo ""
# Some hacking stuff and a bunch of Python repos
printf "\e[1;34 hacking stuff and a bunch of Python repos \e[0m"# Install some dot files
printf "\e [1;34 Installing some dot files \e[0m"
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.vimrc -o ~/.vimrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.bashrc -o ~/.bashrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/.alacritty.yml -o ~/.alacritty.yml
git clone https://github.com/secureauthcorp/impacket.git /opt/impacket/
git clone https://github.com/LinuxUser255/BashAndLinux.git /opt/BashAndLinux/
git clone https://github.com/danielmiessler/SecLists.git  /opt/Seclists/
git clone https://github.com/defparam/smuggler.git /opt/smuggler/
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /opt/Pay-Loads-All-The-Things/
git clone https://github.com/LinuxUser255/RandoHackingStuff.git /opt/HackingStuff/
git clone https://github.com/LinuxUser255/Mullvad_Wireguard.git /opt/Mullvad_Wireguard/
git clone https://github.com/LinuxUser255/passwordgen.git /opt/passwordgen/
git clone https://github.com/LinuxUser255/Monero_Extras.git /opt/Monero_Extras/
git clone https://github.com/LinuxUser255/Python_Intruder.git  /opt/Python_Intruder/
git clone https://github.com/LinuxUser255/xmrig.git  /opt/xmrig/
git clone https://github.com/PortSwigger/http-request-smuggler.git /opt/http-request-smuggler/

echo ""
# Spiderfoot. This is an amazing automated OSINT tool. Open Source Intelligence.
printf "\e [1;34 Installing Spiderfoot. This is an amazing automated OSINT tool. Open Source Intelligence. \e[0m"
wget https://github.com/smicallef/spiderfoot/archive/v3.5.tar.gz -P /opt/scrawler/spiderfoot/v3.5.tar.gz

# Install Wireguard and Mullvad
printf "\e [1;34 Installing Wireguard & Mullvad VPN \e[0m"
chmod +x /opt/Mullvad_Wireguard/install.sh
sh /opt/Mullvad_Wireguard/install.sh

# Install Obsidian, the markdown note taking app
printf "\e [1;34 Installing Obsidian, the markdown note taking app \e[0m"
curl -Ls https://obsidian.md/Obsidian-0.15.9.AppImage -o  /opt/Obsidian-0.15.9.AppImage
chmod +x /opt/Obsidian-0.15.9.AppImage
mv /opt/Obsidian-0.15.9.AppImage -t /usr/bin

# Download and Install Free Tube
printf "\e[1;34 Installing Free-Tube \e[0m"
wget https://github.com/FreeTubeApp/FreeTube/releases/tag/v0.17.1-beta/freetube_0.17.1_amd64.deb
sudo dpkg -i freetube_0.17.1_arm64.deb

# Install Signal
# Install our official public software signing key
printf "\e [1;34 Installing Signal \e[0m"
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# Update your package database and install signal
sudo apt update; sudo apt install signal-desktop

# Install Brave browser
printf "\e [1;34 Installing Brave Browser \e[0m"
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install de-Googled chromium
printf "\e [1;34 Installing de-Googled chromium \e[0m"
sudo apt install chromium

# Install Virtualbox
#wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
#echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
#sudo apt install virtualbox-6.1

# Download and Install IntelliJ IDE and Pycharm
printf "\e [1;34 Installing intellij IDEs \e[0m"
wget -O /tmp/pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-community-2022.2.1.tar.gz"
tar -xf /tmp/pycharm.tar.gz --directory /opt
sudo chown ${USER} /opt/pycharm-community-2022.2.1

mkdir /opt/IntelliJ_Idea
sudo chown ${USER} /opt/IntelliJ_IDEA
wget https://download.jetbrains.com/idea/ideaIU-2022.2.2.tar.gz
tar -zxvf ideaIC-*.tar.gz
sudo mkdir /opt/idea/
sudo chmod 777 /opt/idea/
mv idea-*/* /opt/idea/

# Install plugins for vim and neovim
## Vim Plug
printf "\e [1;34 Installing plugins for vim and neovim \e[0m"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Vim Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vim Gruvbox color theme
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox

# Vim Clone the YCM git the repo
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/YouCompleteMe
# Installing You Complete me
apt install build-essential cmake vim-nox python3-dev
apt install mono-complete golang nodejs default-jdk npm
# Compile YCM
cd ~/.vim/YouCompleteMe
python3 install.py --all

# install oh-my-zsh
printf "\e [1;34 installing oh-my-zsh \e[0m"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Color autocompletion for zsh
sudo apt install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# NeoVim Chad.. all the plugins one could want in one program for Neovim.
printf "\e[1;34 Installing NeoVim Chad. \e[0m"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# Final update
printf "\e [1;34 Final update \e[0m"
sudo apt update; sudo apt upgrade
echo ""
echo ""

# Reminder
echo ""
printf "\e [1;34 Remiders & Extra Stuff. \e[0m"
echo ""
printf "\e [1;31m Download and install Burp Suite: https://portswigger.net/burp/releases/  \e[0m"
printf "\e [1;31m To download the latest Kernel for Debian 11 Bullseye: https://linuxhint.com/upgrade-kernel-in-debian-11-bullseye/  \e[0m"
printf "\e [1;34 Download Postman: https://www.postman.com/downloads/ \e[0m"
printf "\e [1;34 Freetube: https://freetubeapp.io/#download \e[0m"
printf "\e [1;34 https://xmrig.com/ \e[0m"
printf "\e [1;34 Alacritty post build stuff:  https://github.com/alacritty/alacritty/blob/master/INSTALL.md#post-build \e[0m"
printf "\e [1;34 Alacritty ZSH Completions mkdir -p ${ZDOTDIR:-~}/.zsh_functions \e[0m"
printf "\e [1;34 echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc \e[0m"
printf "\e [1;34 cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty \e[0m"
echo ""

# Chang Default Shell to use ZSH
printf "\e[1;31m Changing the default Shell ZSH \e[0m"
echo ""

#sudo -s
#chsh -s /bin/zsh root
sudo chsh -s /bin/zsh ${USER} 

# Install cargo and Allacritty dependencies
# https://github.com/alacritty/alacritty/blob/master/INSTALL.md
printf "\e 1;34 Installing Alacritty & Rust \e[0m"
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
git clone https://github.com/alacritty/alacritty.git
cd alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup override set stable
rustup update stable
cargo build --release

# Install some dot files
printf "\e [1;34 Installing some dot files \e[0m"
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/.zshrc -o ~/.zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.vimrc -o ~/.vimrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.bashrc -o ~/.bashrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/.alacritty.yml -o ~/.alacritty.yml

echo " "
echo "experimental kernel 5.19 upgrade: https://sleeplessbeastie.eu/2022/07/05/how-to-install-recent-kernel-using-experimental-debian-distribution/ "
echo ""
echo "Done!"
echo ""
