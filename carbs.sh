#!/usr/bin/env bash

# Update and stuff
sudo apt update; sudo apt upgrade
sudo apt install zsh
sudo apt install pass
sudo apt install rip-grep
sudo apt install terminator
sudo apt install alacritty
sudo apt install i3

sudo apt install git curl python3-pip exuberant-ctags ack-grep
sudo pip3 install pynvim flake8 pylint isort


curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.vimrc -o ~/.vimrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc




curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/f -o /usr/bin/f
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/fastgrep    -o /usr/bin/fastgrep
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/fff    -o /usr/bin/fff
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/ggg    -o /usr/bin/ggg
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/cookiemonster    -o /usr/bin/cookiemonster
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/cookiesteal.txt    -o /usr/bin/cookiesteal.txt
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/headers.py    -o /usr/bin/headers.py
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/line_spacing.txt    -o /usr/bin/line_spacing.txt
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/new    -o /usr/bin/new
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/printawk    -o /usr/bin/printawk
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/py    -o /usr/bin/py
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/red    -o /usr/bin/red
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/window_size.sh    -o /usr/bin/window_size.sh
curl -Ls https://github.com/LinuxUser255/BashAndLinux/blob/main/UsrBin/xmrlert    -o /usr/bin/xmrlert


git clone https://github.com/aboul3la/Sublist3r.git /opt/Sublist3r/
git clone https://github.com/secureauthcorp/impacket.git /opt/impacket/
git clone https://github.com/LinuxUser255/BashAndLinux.git /opt/BashAndLinux/
git clone https://github.com/danielmiessler/SecLists.git  /opt/Seclists/
git clone https://github.com/defparam/smuggler.git /opt/smuggler/
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /opt/Pay-Loads-All-The-Things/
git clone https://github.com/LinuxUser255/RandoHackingStuff.git /opt/HackingStuff/
wget https://github.com/smicallef/spiderfoot/archive/v3.5.tar.gz -P /opt/scrawler/spiderfoot/v3.5.tar.gz

# install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
