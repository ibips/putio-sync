#!/bin/bash
FILE=$1
chmod -R 777 "$FILE"
mv "$FILE" /volumes/completed
