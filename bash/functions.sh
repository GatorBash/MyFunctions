#!/bin/bash

#fork
:(){
  : | :
}

#install packages that aren't currently installed
pkg(){
  if ! which $pkg > /dev/null
  then
    apt-get install $pkg -q -y > /dev/null 2> /dev/null
    wait
    printf "\n$pkg installed\n"
  fi
}
