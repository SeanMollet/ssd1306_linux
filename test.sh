#!/bin/sh

./ssd1306_bin -n 2 -I 128x64
./ssd1306_bin -n 2 -c
./ssd1306_bin -n 2 -m "Hello World!"

sleep 1
max=100
for i in $(seq -s " " 1 $max)
do
    ./ssd1306_bin -n 2 -c0 -m "Counting ${i}"
    sleep 1
done