#!/bin/sh

autorandr -l desktop
xset b 0 0 0
xset b off
redshift&
nitrogen --head=0 --set-zoom-fill --random ~/Pictures/Wallpapers/
nitrogen --head=1 --set-zoom-fill --random ~/Pictures/Wallpapers/
nitrogen --head=2 --set-zoom-fill ~/Pictures/Wallpapers/wp_jon-tyson-228428-unsplash.jpg
synology-cloud-station&