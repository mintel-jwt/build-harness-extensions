#!/bin/bash

foo="Hello there"

printf %s\\n ',s/foo/bar/g' w q | ed -s file

sed 's/foo/bar/g' file > tmpfile && mv tmpfile file

msg="Please enter a file name of the form *.zip"
echo $msg

printf "%s\n" "$foo"

echo <<EOF
Hello world
How's it going?
EOF

echo "Hello world
  How's it going?"

su -c 'echo hello'

[[ -s $errorlog ]] && echo "Uh oh, there were some errors." || echo "Successful."
