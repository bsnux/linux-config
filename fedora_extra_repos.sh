#!/bin/bash

# Google Chrome 64bits
echo "
[google-chrome]
name=google-chrome - 64-bit
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub" > /etc/yum.repos.d/chrome.repo

# Adobe
echo "
[adobe-linux-i386]
name=Adobe Systems Incorporated
baseurl=http://linuxdownload.adobe.com/linux/i386/
enabled=1
gpgcheck=0" > /etc/yum.repos.d/adobe.repo

# Cinnamon desktop
echo "
[fedora-cinnamon]
name=Cinnamon provides core user interface functions for the GNOME 3 desktop
baseurl=http://repos.fedorapeople.org/repos/leigh123linux/cinnamon/fedora-$releasever/$basearch/
enabled=1
skip_if_unavailable=1
gpgcheck=0" > /etc/yum.repos.d/cinnamon.repo

echo "
[fedora-cinnamon-source]
name=Cinnamon provides core user interface functions for the GNOME 3 desktop - Source
baseurl=http://repos.fedorapeople.org/repos/leigh123linux/cinnamon/fedora-$releasever/SRPMS
enabled=0
skip_if_unavailable=1
gpgcheck=0" > /etc/yum.repos.d/cinnamon_source.repo

# Dropbox
echo "
[Dropbox]
name=Dropbox Repository
baseurl=http://linux.dropbox.com/fedora/$releasever/
gpgkey=http://linux.dropbox.com/fedora/rpm-public-key.asc
enabled=0" > /etc/yum.repos.d/dropbox.repo

# Virtualbox
echo "
[virtualbox]
name=Fedora $releasever - $basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch
enabled=1
gpgcheck=1
gpgkey=http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc" > /etc/yum.repos.d/virtualbox.repo

# Spotify
echo "
[spotify]
name=Repository for the Spotify client
baseurl=http://repository.spotify.com/fedora/releases/$releasever/$basearch
enabled=1
metadata_expire=7d
gpgcheck=0 " > /etc/yum.repos.d/spotify.repo
