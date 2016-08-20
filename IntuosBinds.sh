#! /bin/bash
## This script was designed for a Wacom Intuos Pro Medium. It will probably work with any other Wacom tablet \
## but you will have to remove the irrelevant parts (i.e the Touch handler for non-touch tablets)

PAD=$(xsetwacom list dev | grep -o ".*pad")
STYLUS=$(xsetwacom list dev | grep -o ".*stylus")
ERASER=$(xsetwacom list dev | grep -o ".*eraser")
TOUCH=$(xsetwacom list dev | grep -o ".*touch")

## Verify ID's are there
echo $PAD
echo $STYLUS
echo $ERASER
echo $TOUCH

## Flip Orientation, map to HDMI ext. monitor.
## Run "xrandr" to find which monitor identifier you want to map to
## Stylus
xsetwacom --set "$STYLUS" MapToOutput "HDMI1"
xsetwacom --set "$STYLUS" Rotate half
## Eraser
xsetwacom --set "$ERASER" MapToOutput "HDMI1"
xsetwacom --set "$ERASER" Rotate half
## Touch
xsetwacom --set "$TOUCH" MapToOutput "HDMI1"

## Button bindings for the ExpressKeys on the tablet. Bear in mind this was configured with a left-handed \
## orientation. Reverse the order for your own setup.
## Bottom Tablet Buttons, in order from top to bottom.
xsetwacom --set "$PAD" Button 9 "key ctrl shift z"
xsetwacom --set "$PAD" Button 8 "key ctrl z"
xsetwacom --set "$PAD" Button 3 "key ctrl shift r"
xsetwacom --set "$PAD" Button 2 "key ctrl"
## Middle Tablet Button
xsetwacom --set "$PAD" Button 1 "key e"
## Top Tablet Buttons, in order from top to bottom.
xsetwacom --set "$PAD" Button 13 "key 6"
xsetwacom --set "$PAD" Button 12 "key 4"
xsetwacom --set "$PAD" Button 11 "key ="
xsetwacom --set "$PAD" Button 10 "key -"
