#!/bin/bash


# auto rice my Debian system.
sudo apt update && sudo apt upgrade;

# essential pkgs
sudo apt install git wget curl gzip scdoc fzf neofetch pass ripgrep redshift kwrite audacious mystiq kdenlive haruna kodi gimp ranger mpv simplescreenrecorder vlc net-tools sqlmap netdiscover nmap cmake hashcat nodejs npm openrgb ckb-next 
sudo apt -y install lua5.1

# Install shortcut scripts, make executable then move all to /usr/bin
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/cookiemonster -o cookiemonster
chmod +x cookiemonster
sudo mv cookiemonster -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/cookiesteal.txt -o cookiesteal.txt
sudo mv cookiesteal.txt /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/f -o f
chmod +x f
sudo mv f -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/fastgrep -o fastgrep
chmod +x fastgrep
sudo mv fastgrep -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/fff -o fff
chmod +x fff
sudo mv fff -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/ggg -o ggg
chmod +x ggg
sudo mv ggg -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/headers -o headers
chmod +x headers
sudo mv headers -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/headers.txt -o headers.txt
sudo mv headers.txt -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/new -o new
chmod +x new
sudo mv new -t /usr/bin

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/printawk -o printawk
chmod +x printawk
sudo mv printawk -t /usr/bin/

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/pw-search -o pw-search
chmod +x pw-search
sudo mv pw-search -t /usr/bin/

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/py -o py
chmod +x py
sudo mv py -t /usr/bin/

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/red -o red
chmod +x red
sudo mv red -t /usr/bin/

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/tarcmds -o tarcmds
chmod +x tarcmds
sudo mv tarcmds -t /usr/bin/

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/xfh -o xfh
chmod +x xfh
sudo mv xfh -t /usr/bin/

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/xmrlert -o xmrlert
chmod +x xmrlert
sudo mv xmrlert -t /usr/bin/

# Install yt-dlp https://github.com/yt-dlp/yt-dlp/wiki/Installation
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp  # Make executable

# install programs & software:
# brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# signal
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# update to latest version of python3 and pip3
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz -P ~/Downloads
cd ~/Downloads
tar -xvf Python-3.11.3.tgz
cd Python-3.11.3; sudo ./configure --enable-optimizations
sudo make -j 8
nproc
sudo make install


# Install Alacritty..Manual install
# https://github.com/alacritty/alacritty/blob/master/INSTALL.md
# Install Dependencies, Install the Rust compiler, & select option 1
printf "\e[1;31m When prompted to select installation, use 1.\e[0m"
sudo apt install curl git cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Source the cargo environment.
source $HOME/.cargo/env

# Ensure that you have the right compiler.
rustup override set stable
rustup update stable

# Clone the Alacritty source code
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# clone the source code
git clone https://github.com/alacritty/alacritty.git

# Build Alacritty from source.
cargo build --release

# Post Build Alacritty Configurations.
infocmp alacritty

# Ensure Alacritty is installed globally
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

# you must be in the alacritty directory to successfully complete the Desktop entry
# /home/linux/alacritty
sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# Creating the man pages
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null

# Shell completions for Zsh
mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc

# Import my Alacritty configuration
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/.alacritty.yml -o ~/.alacritty.yml
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/alacritty.yml -o ~/alacritty/alacritty.yml

# Left to add to this script
# Install the following........
# burpsuite
# monero wallet
# goland
# intellijIDEA
# pycharm
# yoserial
# java
# steam
# mullvad
# go

# Install neovim latest
# https://docs.rockylinux.org/books/nvchad/install_nvim/
# curl -Ls https://raw/NeoVim
# mv nvim-linux64.tar.gz ~/.local/bin
# cd ~/.local/bin
# tar xzvf nvim-linux64.tar.gz
# rm -fr nvim-linux64.tar.gz
# ln -s ./nvim-linux64/bin/nvim ./nvim
#

#  Install nvchad
# git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim


# Lastly, set cursor speed and remap caps and escape
xset r rate 300 80
setxkbmap -option "caps:escape"
xset -q | grep "Caps Lock:\s*on" && xdotool key Caps_Lock

printf "\e[1;31m Install Zsh latest.\e[0m"
echo ""
printf "\e[1;31m https://zsh.sourceforge.io/Arc/source.html.\e[0m"
echo ""                                                         
printf "\e[1;31m https://sourceforge.net/p/zsh/code/ci/5.9/tree/.\e[0m"
echo ""
printf "\e[1;31m https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz/download .\e[0m"
echo ""
printf "\e[1;31m # change to zsh and make default shell .\e[0m"
printf "\e[1;31m # then continue running this script in the new shell.\e[0m"
printf "\e[1;31m # change to zsh and make default shell .\e[0m"
printf "\e[1;31m chsh -s /usr/bin/zsh .\e[0m"
printf "\e[1;31m # then continue running this script in the new shell .\e[0m"
printf "\e[1;31m # then continue running this script in the new shell .\e[0m"
printf "\e[1;31m # install oh-my-zsh .\e[0m"
printf "\e[1;31m sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  .\e[0m"
printf "\e[1;31m # zsh-syntax-highlighting .\e[0m"
printf "\e[1;31m git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .\e[0m"
printf "\e[1;31m #echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshr .\e[0m"
printf "\e[1;31m # import my .zshrc .\e[0m"
printf "\e[1;31m curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc .\e[0m"
printf "\e[1;31m # import my .zshrc \e[0m"
printf "\e[1;31m curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc \e[0m"
printf "\e[1;31m # source/instantiate syntax-highlighting \e[0m"
printf "\e[1;31m source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \e[0m"
echo ''
printf "\e[1;31m for remaining instructions go to: https://github.com/LinuxUser255/DebianRice \e[0m"
echo ''
# printf "\e[1;31m \e[0m"
# printf "\e[1;31m \e[0m"
# printf "\e[1;31m \e[0m"
# printf "\e[1;31m \e[0m"
