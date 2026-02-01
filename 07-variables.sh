#!/bin/bash

echo "$@"
echo "$#"
echo "$0"
echo "$PWD"
echo "$USER"
echo "$HOME"
echo "$$"
sleep 10 &
echo "$!"
echo "$*"
echo "$?"