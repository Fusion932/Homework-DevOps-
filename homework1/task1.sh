#!/bin/bash
# Check for arguments
if [ $# -ne 1 ]
then
  echo "[ERROR]: enter one argument"
  exit 1
fi

re='^[1-9][0-9]+$'
if ! [[ $1 =~ $re ]]
then
  echo "[ERROR]: Salary must be only integer numbers"
  exit 1
fi

if [ $1 -lt 0 ]
then
  echo "[ERROR]: Salary must have only positive values"
  exit 1
fi

# Comparing salary and output tax rates
compare_taxes() {
  if [ $1 -lt 5000 ]
  then
    echo "no taxes"
  elif [ $1 -ge 5000 ] && [ $1 -le 30000 ]
  then
    echo "taxes are 10%"
  elif [ $1 -gt 30000 ]
  then
    echo "taxes are 20%"
  fi
}

compare_taxes $1
