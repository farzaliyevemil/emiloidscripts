#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") FILES"
  exit 1
fi

extract() {
  for arg in "$@" ; do
    if [ -f "$arg" ]; then
      case "$arg" in
        *.tar.bz2)  tar xjf "$arg"       ;;
        *.tar.gz)   tar xzf "$arg"       ;;
        *.bz2)      bunzip2 "$arg"       ;;
        *.gz)       gunzip "$arg"        ;;
        *.tar)      tar xf "$arg"        ;;
        *.tbz2)     tar xjf "$arg"       ;;
        *.tgz)      tar xzf "$arg"       ;;
        *.zip)      unzip "$arg"         ;;
        *.Z)        uncompress "$arg"    ;;
        *.rar)      rar x "$arg"         ;; # Requires 'rar'
        *.7z)       7z x "$arg"          ;; # Requires 'p7zip-full'
        *.jar)      jar -xvf "$arg"      ;; # Requires JDK
        *)          echo "'$arg' cannot be extracted via this script." ;;
      esac
    else
      echo "'$arg
