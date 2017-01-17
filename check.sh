#!/bin/bash

# if [ "$1" != "-t" ]; then
#   usage;
# fi

node_modules/.bin/eslint $1 && npm test -- $1

