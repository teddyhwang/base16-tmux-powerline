#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  if [ $SPIN ]; then
    tmux source-file "$CURRENT_DIR/base16-powerline-spin.tmuxtheme"
  else
    tmux source-file "$CURRENT_DIR/base16-powerline.tmuxtheme"
  fi
}

main
