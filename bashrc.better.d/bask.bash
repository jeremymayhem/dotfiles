#!/bin/env sh

# Set up bask path
better::path_append $HOME/.bask/bin
eval $(bask --completion=bash)
