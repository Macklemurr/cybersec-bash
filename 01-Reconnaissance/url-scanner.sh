#!/bin/bash
echo -e "Type in the url: \c"
read url 
gobuster dir --url $url -w=/usr/share/wordlists/dirb/common.txt
echo -e "Would you like to use the bigger wordlist? Y/N : \c"
read decision
if [ $decision = Y ]; then
	gobuster dir --url $url -w=/usr/share/wordlists/dirb/big.txt
elif [ $decision = N ]; then
	exit 0
fi

