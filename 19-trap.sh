#!/bin/bash

set -e #ERR

trap 'echo "there is a error in $LINENO and $BASH_COMMAND"' ERR

echo "hello"
echho "how are you"
echo "what you doing"
echo "what is the status"