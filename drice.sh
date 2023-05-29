#!/bin/bash


# auto rice my Debian system.
sudo apt update && sudo apt upgrade;

# essential pkgs
sudo apt install git wget curl vim freetube fzf neofetch pass ripgrep xset redshift kwrite audacious mystiq kdenlive haruna kodi gimp ranger mpv simplescreenrecorder vlc net-tools sqlmap netdiscover nmap cmake fzf nodejs npm openrgb ckb-next chromium

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
sudo mv py -t /usr/bin/py

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/red -o red
chmod +x red
sudo mv red -t /usr/bin/red

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/tarcmds -o tarcmds
chmod +x tarcmds
sudo mv tarcmds -t /usr/bin/tarcmds

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/xfh -o xfh
chmod +x xfh
sudo mv xfh -t /usr/bin/xfh

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/xmrlert -o xmrlert
chmod +x xmrlert
sudo mv xmrlert -t /usr/bin/xmrlert


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


#  Install zsh 5.8 or higher





# change to zsh and make default shell
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc


# import my .zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc

# source/instantiate syntax-highlighting
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# update to latest version of python3 and pip3
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz -P ~/Downloads
cd ~/Downloads
tar -xvf Python-3.11.3.tgz
cd Python-3.11.3; sudo ./configure --enable-optimizations
sudo make -j 8
nproc
sudo make install



# Install neovim latest
curl -Ls https://raw/NeoVim
mv nvim-linux64.tar.gz ~/.local/bin
cd ~/.local/bin
tar xzvf nvim-linux64.tar.gz
rm -fr nvim-linux64.tar.gz
ln -s ./nvim-linux64/bin/nvim ./nvim


# Install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# go

# cargo/rust


# install alacritty
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/.alacritty.yml -o ~/.alacritty.yml

# git clone some repos




# lua
# monero wallet

# fzf
# goland
# intellijIDEA
# pycharm
# yoserial
# java
# steam


# burpsuite

# mullvad
