#!/usr/bin/env bash

# Update and stuff
sudo apt update; sudo apt upgrade
sudo apt install git
sudo apt install wget
sudo apt install curl
sudo apt install vim
sudo apt install neovim
sudo apt install zsh
sudo apt install pass
sudo apt install rip-grep
sudo apt install terminator
sudo apt install kwrite
sudo apt install audacious
sudo apt install kdenlive
sudo apt install mpv
sudo apt install simplescreenrecorder
sudo apt install vlc
sudo apt install i3
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


# Pip requirements for the repos below & vim plugins
sudo pip3 install -r requirements.txt


# Install cargo and Allacritty dependencies
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo install alacritty

# Download stuff from youtube
python3 -m pip install -U yt-dlp

#Download & install Electrum BTC Wallet
# Install dependencies
sudo apt-get install python3-pyqt5 libsecp256k1-0 python3-cryptography

# download package
wget https://download.electrum.org/4.3.1/Electrum-4.3.1.tar.gz

# Verify signatures
wget https://download.electrum.org/4.3.1/Electrum-4.3.1.tar.gz.asc
gpg --verify Electrum-4.3.1.tar.gz.asc

#Install with pip
sudo apt-get install python3-setuptools python3-pip
python3 -m pip install --user Electrum-4.3.1.tar.gz

# Install some dot files
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.vimrc -o ~/.vimrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.bashrc -o ~/.bashrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/.alacritty.yml -o ~/.alacritty.yml

# Install some shortcut commands/scripts
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/f  -o  /usr/bin/f; chmod +x /usr/bin/f
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/fastgrep  -o  /usr/bin/fastgrep; chmod +x /usr/bin/fastgrep
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/fff  -o  /usr/bin/fff; chmod +x /usr/bin/fff
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/ggg  -o  /usr/bin/ggg; chmod +x /usr/bin/ggg
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/cookiemonster  -o  /usr/bin/cookiemonster; chmod +x /usr/bin/cookiemonster
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/cookiesteal.txt -o  /usr/bin/cookiesteal.txt /usr/bin/cookiesteal.txt
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/headers.py  -o  /usr/bin/headers.py; chmod +x /usr/bin/headers.py
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/line_spacing.txt  -o  /usr/bin/line_spacing.txt  /usr/bin/line_spacing.txt
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/new  -o  /usr/bin/new; chmod +x /usr/bin/new
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/printawk  -o  /usr/bin/printawk; chmod +x /usr/bin/printawk
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/py  -o  /usr/bin/py; chmod +x /usr/bin/py
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/red  -o  /usr/bin/red; chmod +x /usr/bin/red
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/window_size.sh  -o  /usr/bin/window_size.sh; chmod +x /usr/bin/window_size.sh
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/xmrlert  -o  /usr/bin/xmrlert; chmod +x /usr/bin/xmrlert

# grant ownership to reg user over /opt
sudo chown ${USER} /opt
git clone https://github.com/aboul3la/Sublist3r.git /opt/Sublist3r/
git clone https://github.com/secureauthcorp/impacket.git /opt/impacket/
git clone https://github.com/LinuxUser255/BashAndLinux.git /opt/BashAndLinux/
git clone https://github.com/danielmiessler/SecLists.git  /opt/Seclists/
git clone https://github.com/defparam/smuggler.git /opt/smuggler/
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /opt/Pay-Loads-All-The-Things/
git clone https://github.com/LinuxUser255/RandoHackingStuff.git /opt/HackingStuff/
git clone https://github.com/LinuxUser255/Mullvad_Wireguard.git /opt/
wget https://github.com/smicallef/spiderfoot/archive/v3.5.tar.gz -P /opt/scrawler/spiderfoot/v3.5.tar.gz

# Install Wireguard and Mullvad
chmod +x /opt/Mullvad_Wireguard/install.sh
sh /opt/Mullvad_Wireguard/install.sh


# Install Obsidian, the markdown note taking app
curl -Ls https://obsidian.md/Obsidian-0.15.9.AppImage -o  /opt/Obsidian-0.15.9.AppImage
chmod +x /opt/Obsidian-0.15.9.AppImage
mv /opt/Obsidian-0.15.9.AppImage -t /usr/bin

# DL and INstall Free Tube
wget https://github.com/FreeTubeApp/FreeTube/releases/tag/v0.17.1-beta/freetube_0.17.1_amd64.deb
sudo dpkg -i freetube_0.17.1_amd64.deb

# Install Signal
# Install our official public software signing key
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# Update your package database and install signal
sudo apt update; sudo apt install signal-desktop

# Install Brave browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install de-Googled chromium
sudo apt install chromium

# Install Virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt install virtualbox-6.1

# Download and Install INtelliJ IDE and Pycharm
mkdir /opt/Pycharm
sudo chown ${USER} /opt/Pycharm
curl -Ls https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=linux&code=PCC -o /opt/Pycharm

mkdir /opt/INtelliJ_Idea
sudo chown ${USER} /opt/IntelliJ_IDEA
curl -Ls https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux&code=IIC -o /opt/IntelliJ_IDEA

# Install plugins for vim and neovim
# NeoVim Chad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# Vim Plug
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

# Chang Default Shell to use ZSH
sudo -s
chsh -s /bin/zsh root
chsh -s /bin/zsh linux # <-- put the user name you created when installing Linux

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Final update
sudo apt update; sudo apt upgrade

# Reminder
printf "\e[1;31m Download and install Burp Suite: https://portswigger.net/burp/releases/professional-community-2022-8-2  \e[0m"

printf "\e[1;31m Burp Suite check sum: SHA256: 2aa90706f60e3c3e58175ebe9fe09c8f55a4c94f56479e6d218de0580f7228fd \e[0m"

printf "\e[1;31m Mullvad should be installed and ready to run now. \e[0m"

echo ""
echo "DONE!"
echo ""
