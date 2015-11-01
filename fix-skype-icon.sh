#!/usr/bin/env bash

set -e # tells bash, in a script, to exit whenever anything returns a non-zero return value

msg() {
    tput setab 2 # green bg
    tput setaf 7 # white text
    echo ">>> $1"
    tput sgr 0
    sleep 1
}

main() {
  msg "Downloading .deb package with a hack that compels sni-qt:i386"
  wget https://www.dropbox.com/s/x91gec5q0uz3hnx/sni-qt_0.2.6-0ubuntu1_i386-modified.deb?dl=0 -O sni-qt_0.2.6-0ubuntu1_i386-modified.deb
  msg "Installing sni-qt_0.2.6-0ubuntu1_i386-modified.deb"
  sudo dpkg -i sni-qt_0.2.6-0ubuntu1_i386-modified.deb
  msg "Downloading fixed icons"
  wget https://www.dropbox.com/s/wimn53noljv0vbi/skype_systemtray_custom_icons.zip?dl=0 -O skype_systemtray_custom_icons.zip
  msg "Unpacking icons"
  unzip skype_systemtray_custom_icons.zip
  msg "Creating directories and copying icons"
  sudo mkdir /usr/share/pixmaps/skype
  sudo cp skype/* /usr/share/pixmaps/skype
  sudo chmod +r /usr/share/pixmaps/skype/*
  msg "Removing temporary directories and files"
  rm skype_systemtray_custom_icons.zip
  rm sni-qt_0.2.6-0ubuntu1_i386-modified.deb
  rm -rf skype
  msg "Done! Tray icons were replaced successfully!"
  msg "Quit Skype (if running) and start it again"
}

main "$@" # "$@" is an array-like construct of all positional parameters, {$1, $2, $3 ...}
