#!/bin/bash
# encrypt from buffer
if [[ -z "$1" ]]; then
	echo "Error: No recepient specified"
	echo "encrypt.sh foo@bar.com"
	exit 1
fi
pbpaste | gpg --encrypt --sign --armor -r $1 - | pbcopy
