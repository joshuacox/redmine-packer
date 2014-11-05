#!/bin/bash
rm -r vendor
rm Berksfile.lock
berks vendor vendor/cookbooks
#/usr/bin/time -v packer build -debug --only=qemu redmine-debian-7.7-i386.json
#/usr/bin/time -v packer build --only=qemu redmine-debian-7.7-i386.json
/usr/bin/time -v packer build --only=virtualbox-iso redmine-debian-7.7-i386.json
#/usr/bin/time -v packer build --only=virtualbox-iso redmine-debian-7.7-i386.json
# beeper
aplay /usr/share/sounds/alsa/Front_Center.wav
# ogg123 /usr/share/sounds/KDE-Im-Irc-Event.ogg
