#!/bin/bash

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

precmd() { print -rP "%F{147}┌ %m%B%f %F{215}%~%f%b" }
PROMPT=$'%B%F{147}└❯%f%b '

RPROMPT=''

