#!/usr/bin/env bash

## ROFI
rofi_version="rofi-1.7.5"
rofi_1_75_release="https://github.com/davatorium/rofi/releases/download/1.7.5/rofi-1.7.5.tar.gz"
download_directory="/home/alexanderbf/Sources/"

wget -P "$download_directory" "$rofi_1_75_release"

tar -xvf "$download_directory/rofi-1.7.5.tar.gz" -C "$download_directory"

cd "$rofi_version"

#mkdir build && cd build
#../configure
#make
#make install
