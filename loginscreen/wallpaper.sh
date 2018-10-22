#!/bin/bash

# call with img uri

BG_PATH="/usr/share/backgrounds"
BG_IMG="$BG_PATH/i3_default_background.jpg"
BG_BAK="$BG_PATH/i3_default_background.old.jpg"

if [ -z "$1" ]
then
  echo "You have to pass a JPEG img uri as script parameter."
  exit 0
fi

sudo rm -rf $BG_BAK \
&& sudo mv $BG_IMG $BG_BAK \
&& sudo cp $1 $BG_IMG \
&& echo "Login screen background successfully applied."