#!/bin/env sh

# Set up bask path
better::path_append $HOME/.bask/bin
if better::command_exists bask; then
  eval $(bask --completion=bash)
fi
