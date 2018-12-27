#!/bin/bash
apt-get install aptitude -y
apt-get install apt-transport-https -y
#apt-get install git -y
#git clone https://github.com/gbzhang/config
#cd config
cp sources.list /etc/apt/sources.list
wget https://mirrors.ustc.edu.cn/deb-multimedia/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb
dpkg -i deb-multimedia-keyring_2016.8.1_all.deb
wget http://mirrors.ustc.edu.cn/debiancn/pool/main/d/debiancn-keyring/debiancn-keyring_0~20161212_all.deb
dpkg -i debiancn-keyring_0~20161212_all.deb
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
aptitude update
rm debiancn-keyring_0~20161212_all.deb
rm deb-multimedia-keyring_2016.8.1_all.deb
aptitude dist-upgrade -y
cp virtualbox.list /etc/apt/sources.list.d/virtualbox.list
aptitude -y install octave grace kile p4vasp vim lyx gelemental \
  xcrysden texlive-science texlive-publishers \
  sudo wxmaxima inkscape fonts-wqy-microhei fonts-wqy-zenhei \
  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy vim
aptitude install virtulbox-6.0 -y
