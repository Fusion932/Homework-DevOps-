#!/bin/bash
if [ $# -ne 1 ]
then
  echo "[ERROR]: Enter only one argument"
  exit 1
fi

let a=$1 2>/dev/null
if [ $? -ne 0 ]
then
  echo "[ERROR]: Enter arithmetic operations with integers only"
  exit 1
fi

echo $a
