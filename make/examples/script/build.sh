#!/bin/sh
convert -resize 320x beach.jpg beach.thumb.jpg
convert -resize 320x bridge.jpg bridge.thumb.jpg
convert -resize 320x mountain.jpg mountain.thumb.jpg
convert -resize 320x tree.jpg tree.thumb.jpg
convert -resize 320x flower.jpg flower.thumb.jpg
convert -resize 320x road.jpg road.thumb.jpg
python3 gallery.py beach.jpg bridge.jpg mountain.jpg tree.jpg flower.jpg road.jpg > gallery.html
