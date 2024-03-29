#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  tmux source-file "$CURRENT_DIR/base16-powerline.tmuxtheme"
  if [ $SPIN ]; then
    tmux source-file "$CURRENT_DIR/base16-powerline-spin.tmuxtheme"
  fi
}

main
