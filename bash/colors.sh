#!/bin/sh

label="localhost"
bold=1

prompt_part() { printf "\e[$2;38;5;$3;48;5;${4}m $1 \e[;38;5;$4${5+;48;5;$5}m"; }

for color in {0..255}; do
  printf "\n"
  prompt_part "$label" $bold 231 $color 240
  prompt_part "~" 0 252 240
  printf "\e[m $color\n"
done
