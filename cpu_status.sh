#!/bin/sh
top -d 0.1 -b -n2 | grep "Cpu(s)"| awk '{printf "%s%\n", $2 + $4}' | tail -n 1
