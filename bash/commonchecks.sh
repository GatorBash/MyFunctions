#!/bin/bash

#sudo check
if [[ $UID != 0 ]]
then
  echo "Run it as root"
  exit 1
fi

#internet check
if ! ping -c 1 8.8.8.8 > /dev/null 2> /dev/null
then
  echo "Connect to the internet"
  exit 1
fi

