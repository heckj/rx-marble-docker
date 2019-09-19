#!/bin/sh
echo "finding all txt files from /data"
find /data -type f -name "*.txt" | while read txt; do
  marblesgen -v "${txt}"
done

#echo "Converting to PNG"
#find /data -type f -name "*.svg" | while read svg; do
#  name=$(echo "${svg}" | cut -f 1 -d '.')
#  echo "Converting ${svg} to png"
#  rsvg-convert "${svg}" -f png > "${name}.png"
#done