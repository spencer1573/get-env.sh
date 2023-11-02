#!/bin/bash

GIT_CONFIG_VARIABLE=$1 

# echo $GIT_CONFIG_VARIABLE

# is blank
[ -z "${GIT_CONFIG_VARIABLE}" ] && echo "you failed to pass an arguement"


EXTRACTED_GIT_CONFIG_VARIABLE=$(sed -n "s/^$GIT_CONFIG_VARIABLE=\(.*\)/\1/p" < ".env" | xargs)

echo $EXTRACTED_GIT_CONFIG_VARIABLE
