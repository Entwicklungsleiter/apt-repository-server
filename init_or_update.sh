#!/bin/bash

cd ./debfiles
rm ./Packages.gz
dpkg-scanpackages ./ /dev/null | gzip > ./Packages.gz
