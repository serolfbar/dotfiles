#!/usr/bin/env bash

# Make sure that we can find the vim folder

./configure --with-features=huge \ 
		--enable-multibyte \ 
		--enable-python3interp=yes \
		--prefix=/usr/local

make
sudo make install

