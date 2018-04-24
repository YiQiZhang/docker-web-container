#!/bin/bash

for var in `find . -type d -maxdepth 1 | grep '/'`; do
	cd $var
	git pull
	cd ..
	echo "$var update finished"
done
