#!/bin/bash

# Simple file extractor
# Usage: ./extract.sh <file1> <file2> ...

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
        *.jar)      jar -xvf "$arg"      ;; # Requires JDK
        *)          echo "'$arg' cannot be extracted via this script." ;;
      esac
    else
      echo "'$arg' is not a valid file"
    fi
  done
}

extract "$@"
