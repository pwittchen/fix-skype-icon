#!/usr/bin/env bash
set -e # tells bash, in a script, to exit whenever anything returns a non-zero return value

main() {
  sudo rm -r /usr/share/pixmaps/skype
}

main "$@" # "$@" is an array-like construct of all positional parameters, {$1, $2, $3 ...}
