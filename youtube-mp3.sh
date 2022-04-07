#!/bin/bash

# help function
help() {
  echo "Youtube URL is required."
  echo "Try youtube-mp3.sh <URL>"
  echo "Or youtube-mp3.sh <FilePath> [-l or -list]"
}

# download as mp3 function
download() {
  youtube-dl -f bestaudio $1 --extract-audio --audio-format mp3
}

# read file function
readFile() {
  while read url; do
    download $url
  done < $1
}

# check parameter
if [ $# = 0 ]; then
  help
else
  case $2 in
    # many URLs from file
    -l|--list)
      # check if file exists
      if [ -f $1 ]; then
        readFile $1
      else
        echo "Error: file $1 does not exist."
      fi
      ;;
    # one URL from parameter
    *)
      download $1
    ;;
  esac 
fi
