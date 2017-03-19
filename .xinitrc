#!/bin/bash

DWM_RENEW_INT=1;

(sleep $DWM_RENEW_INT; conky -c .conkystatus | while read LINE; do xsetroot -name "$LINE"; done) &
urxvtd -q -f -o &
xrdb ~/.Xresources &
exec dwm
