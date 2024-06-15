#!/bin/bash
MAGIC_FILE="alx-system_engineering-devops/0x00-shell_basics/school.mgc"
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <file>"
	exit 1
fi
FILE=$1
if [ ! -f "$FILE" ]; then
	echo "File not found!"
	exit 1
fi
file --magic-file "$MAGIC_FILE" "$FILE"
