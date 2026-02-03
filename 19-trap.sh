#!/bin/bash

set -e #ERR

trap 'echo "there is a error in line no:$LINENO and command:$BASH_COMMAND"' ERR

echo "hello"
echho "how are you"
echo "what you doing"
echo "what is the status"