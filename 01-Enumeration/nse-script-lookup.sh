#!/bin/bash
NSE=/usr/share/nmap/scripts/
echo -e "Type in a keyword: \c"
read search
ls $NSE | grep $search
