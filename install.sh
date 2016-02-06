#!/bin/bash

# run: source <(curl -s https://github.com/arsanto/soXauto/blob/master/install.sh

# sox auto
yum install gcc-c++ libmad libmad-devel libid3tag libid3tag-devel lame lame-devel flac-devel libvorbis-devel

yum install -y sox lame

mkdir /usr/local/src/SoX

cd /usr/local/src/SoX

wget http://sourceforge.net/projects/sox/files/sox/14.4.2/sox-14.4.2.tar.gz

tar -xvzf sox-14.4.2.tar.gz

cd sox-14.4.2

./configure

make -s

make install

echo “include /usr/local/lib” >> /etc/ld.so.conf

/sbin/ldconfig
