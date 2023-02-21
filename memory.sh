#!/bin/sh
free | grep Mem | awk '{print $3/$2 * 100.0}' | awk '{printf("%.1f%",$1)}'
