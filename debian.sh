#!/bin/bash
apt-get install aptitude -y
apt-get install apt-transport-https -y
apt-get install git -y
git clone https://github.com/gbzhang/config
cd config
cp sources.list /etc/apt/sources.list
aptitude update
aptitude dist-upgrade -y
cp virtualbox.list /etc/apt/sources.list.d/virtualbox.list
aptitude -y install octave grace kile p4vasp vim lyx gelemental \
  xcrysden texlive-science texlive-publishers \
  sudo wxmaxima inkscape fonts-wqy-microhei fonts-wqy-zenhei \
  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy 
aptitude install virtulbox -y
