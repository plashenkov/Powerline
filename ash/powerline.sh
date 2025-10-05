#!/bin/sh

prompt() {
  local label="\h"
  local color=30 # 30 green, 131 red
  local bold=1

  prompt_part() { printf "\[\e[$2;38;5;$3;48;5;${4}m\] $1 \[\e[;38;5;$4${5+;48;5;$5}m\]"; }

  printf "\n"
  if [ -n "$MC_SID" ]; then
    prompt_part "$label" $bold 231 $color 237
    prompt_part "mc" $bold 231 237 240
  else
    prompt_part "$label" $bold 231 $color 240
  fi
  prompt_part "\w" 0 252 240
  printf "\[\e[m\] "
}

PS1="$(prompt)"
