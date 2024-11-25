#!/usr/bin/env bash

if [ -d out ]; then
  echo '> Removing old output directory'
  rm -rf out
fi

echo '> Creating output directory'
mkdir out

# gcc -Werror -Wall -Wextra src/*.c -o out/mcc
cmake -B out
cd out
make all
