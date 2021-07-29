#!/bin/bash

echo $HOSTNAME > 1.txt
grep "cpu cores" /proc/cpuinfo |sort -u |cut -d":" -f2 | awk '{s+=$1} END {print s}' > 2.txt
grep MemTotal /proc/meminfo > 3.txt
sudo fdisk -l | egrep 'Disk.*bytes' | awk '{sum +=$3;} END {print "total: " sum " GB"}' > 4.txt

cat 1.txt 2.txt 3.txt 4.txt > output.txt
rm -f 1.txt 2.txt 3.txt 4.txt
