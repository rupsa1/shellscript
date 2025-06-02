#!/bin/sh

factorial() {

if [ "$1" -le 1 ];then
echo 1
else 
  prev=$(factorial $(( $1 - 1 )))
echo $(( $1 * prev ))
fi
}

read -p "enter a number:" num
result=$(factorial "$num")
echo "factorial $num is: $result"
