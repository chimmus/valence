#!/bin/bash

# this is for bash, im not that good at shell scripting so uh yea

echo "0 if the shell is full"
echo "----------------------"

while true; do
  read -p "Electrons expected in shell of [1] " input1
  if [[ "$input1" =~ ^[0-9]+$ ]]; then
    break
  else
    echo "Error: '$input' is not a positive integer."
  fi
done

while true; do
  read -p "Electrons in shell of [1] " input2
  if [[ "$input2" =~ ^[0-9]+$ ]]; then
    if ((input2 > input1)); then
      echo "cant be greater than $input1"
    else
      if ((input2 == 0)); then
        echo "element [1] seems to be stable"
        input2=$input1
        break
      else
        echo "element [1] has $input2 electrons in its shell"
        break
      fi
    fi
  else
    echo "Error: '$input2' is not a positive integer."
  fi
done

echo "outershell: $input2/$input1"
