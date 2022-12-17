#!/usr/bin/env bash
xrandr --output DP-1-1 --off 
xrandr --output DP-1-2 --off 

xrandr --auto
xrandr --output DP-1-2 --auto --right-of eDP-1
xrandr --output DP-1-1 --rotate left --right-of DP-1-2
