#!/bin/bash
apt-get install aptitude -y
apt-get install apt-transport-https -y
#apt-get install git -y
#git clone https://github.com/gbzhang/config
#cd config
cp sources.list /etc/apt/sources.list
wget https://sourceforge.net/projects/materiappslive/files/Debian/sources/materiapps-stretch.list
cp materiapps-stretch.list /etc/apt/sources.list.d
cat .inputrc >>/etc/inputrc
apt-get update
apt-get --allow-unauthenticated install materiapps-keyring
apt-get update
aptitude dist-upgrade -y
aptitude install octave grace p4vasp vim gelemental xcrysden sudo -y
aptitude install bash-completion jmol -y
apt-get install munge slurmd slurmctld slurm-wlm-torque openssh-server -y
