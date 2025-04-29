@echo off
chcp 65001 >nul

set label=cmd
set color=67
set adminColor=88
set bold=1

net session >nul 2>nul && set color=%adminColor%

prompt $e[%bold%;48;5;%color%;38;5;231m %label% $e[;38;5;%color%;48;5;240m$e[38;5;252m $p $e[;38;5;240m$e[m
