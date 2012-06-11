#!/bin/bash

# Enabling auto-hint and anti-aliasing
ln -s /etc/fonts/conf.avail/10-autohint.conf /etc/fonts/conf.d/
ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/

# Installing font renderer
yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
yum install freetype-freeworld

#----- Reboot now before continuing

fc-cache

# Installing new fonts
mkdir /usr/share/fonts/myfonts
chmod 755 -R /usr/share/fonts/myfonts
cd /usr/share/fonts
fc-cache myfonts
