#!/bin/bash

install() {
	sudo pacman -Sy

	sudo pacman --noconfirm -S - <  req.txt
}

copy_configs() {
  cp -r config/* $HOME/.config/
}

enable_services() {
  sudo systemctl enable bluetooth
  sudo systemctl enable lightdm
  xdg-user-dirs-update
  xdg-user-dirs-gtk-update
}

install
copy_configs
enable_services
