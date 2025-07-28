#!/bin/bash

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

precmd() { print -rP "%F{blue}┌ %m%B%f %F{yellow}%~%f%b" }
PROMPT=$'%B%F{blue}└❯%f%b '

RPROMPT=''

