#!/bin/bash
apt-get install aptitude -y
apt-get install apt-transport-https -y
apt-get install git -y
git clone https://github.com/gbzhang/config
cd config
cp sources.list /etc/apt/sources.list
wget https://mirrors.ustc.edu.cn/deb-multimedia/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb
dpkg -i deb-multimedia-keyring_2016.8.1_all.deb
wget https://repo.debiancn.org/pool/main/d/debiancn-keyring/debiancn-keyring_0~20161212_all.deb -O /tmp/debiancn-keyring.deb
apt install /tmp/debiancn-keyring.deb
apt update
rm /tmp/debiancn-keyring.deb
rpm deb-multimedia-keyring_2016.8.1_all.deb
aptitude update
aptitude dist-upgrade -y
cp virtualbox.list /etc/apt/sources.list.d/virtualbox.list
aptitude -y install octave grace kile p4vasp vim lyx gelemental \
  xcrysden texlive-science texlive-publishers \
  sudo wxmaxima inkscape fonts-wqy-microhei fonts-wqy-zenhei \
  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy 
aptitude install virtulbox -y
