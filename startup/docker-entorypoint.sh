#!/bin/sh
set -eu

cd ./app
if [ $# -eq 0 ]; then
  echo 'make'
  make

elif [ $1 == 'exec' ]; then
  ./main

elif [ $1 == 'clean' ]; then
  echo 'make clean'
  make clean

else
  echo 'ERROR #1'
fi
