#!/bin/bash
apt-get install aptitude
apt-get install apt-transport-https
apt-get install git
git clone https://github.com/gbzhang/sources.list
cp sources.list /etc/apt/sources.list
aptitude update
aptitude dist-upgrade -y
git clone https://github.com/gbzhang/virtualbox.list
cp virtualbox.list /etc/apt/sources.list.d/virtualbox.list
aptitude install octave grace kile p4vasp vim lyx gelemental \
  xcrysden texlive-science texlive-publishers \
  sudo wxmaxima inkscape fonts-wqy-microhei fonts-wqy-zenhei \
  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy 
aptitude install virtulbox
