#!/bin/bash

urxvtd -q -f -o &
xrdb ~/.Xresources &
exec dwm
