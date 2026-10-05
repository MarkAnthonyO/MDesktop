#!/usr/bin/env bash

# Leer el esquema de color actual de GNOME/GTK
current="$(dconf read /org/gnome/desktop/interface/color-scheme)"

# Alternar rápidamente el esquema para obligar a Nautilus a repintarse
if [[ "$current" == "'prefer-dark'" ]]; then
    dconf write /org/gnome/desktop/interface/color-scheme "'prefer-light'"
    dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
    labwc --reconfigure
else
    dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
    dconf write /org/gnome/desktop/interface/color-scheme "'prefer-light'"
    labwc --reconfigure
fi
