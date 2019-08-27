#!/bin/sh

HELLO=hello
function sayHi {
  local HELLO=hi
  echo $HELLO
}
echo "real hello"
echo $HELLO

echo "fake hello"
sayHi

echo "printing top system info `top`"


echo "what's your name?"
read name
echo "helloooooo $name"

echo "printing uname info `uname -a`"
