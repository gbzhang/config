#!/bin/bash
apt-get install aptitude -y
apt-get install apt-transport-https -y
#apt-get install git -y
#git clone https://github.com/gbzhang/config
#cd config
cp sources.list /etc/apt/sources.list
cp .inputrc ~/
wget https://mirrors.ustc.edu.cn/deb-multimedia/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2016.8.1_all.deb
dpkg -i deb-multimedia-keyring_2016.8.1_all.deb
wget http://mirrors.ustc.edu.cn/debiancn/pool/main/d/debiancn-keyring/debiancn-keyring_0~20161212_all.deb
dpkg -i debiancn-keyring_0~20161212_all.deb
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
cp virtualbox.list /etc/apt/sources.list.d/virtualbox.list
rm debiancn-keyring_0~20161212_all.deb
rm deb-multimedia-keyring_2016.8.1_all.deb
wget https://sourceforge.net/projects/materiappslive/files/Debian/sources/materiapps-stretch.list
cp materiapps-stretch.list /etc/apt/sources.list.d
apt-get update
apt-get --allow-unauthenticated install materiapps-keyring
apt-get update
aptitude dist-upgrade -y
aptitude install octave grace kile p4vasp vim lyx gelemental \
  xcrysden texlive-science texlive-publishers \
  sudo wxmaxima inkscape fonts-wqy-microhei fonts-wqy-zenhei \
  ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy vim -y
aptitude install virtualbox-6.0 -y
# 安装坚果云
apt-get install  gvfs-bin python-gi gir1.2-appindicator3-0.1 -y
wget -c https://www.jianguoyun.com/static/exe/installer/debian/nautilus_nutstore_amd64.deb
dpkg -i nautilus_nutstore_amd64.deb
apt-get install -f
aptitude install fcitx-sunpinyin bash-completion jmol -y
# 笔记本
aptitude install synclient -y
#cp synclient.sh /usr/local/bin/
