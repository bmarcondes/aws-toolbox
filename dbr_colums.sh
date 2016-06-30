#!/bin/bash

if [ -z $1 ]; then 
	echo "Usage: $0 <dbr_file>" 
else
	head -1 $1 | tr '","' '\n' | grep -v '^ *$' | awk '{print NR" "$0}'
fi
exit
