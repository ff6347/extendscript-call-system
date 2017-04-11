#!/bin/bash
mkdir -p "$1"
cd "$1"
if [ -z "$3" ]
  then
    curl -L -O "$2"
  else
    curl -L -o "$3" "$2"
fi

