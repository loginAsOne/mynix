#!/usr/bin/env bash

sleep 1

killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-wlr
killall xdg-dektop-portal
killall waybar

xdg-desktop-portal-hyprland &

sleep 2

xdg-desktop-portal &

# initializing wallpaper daemon
swww init &
# setting wallpaper
swww img ~/Pictures/hyprland.webp &

# you can install this by adding
# pkgs.networkmangerpplet to your packages
nm-applet --indicator &

# the bar
waybar &

# dunst
dunst &
