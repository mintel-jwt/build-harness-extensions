#!/bin/bash

foo="Hello there"
file="file"
target="target"

cp -- "$file" "$target"

[ = "bar" ] # Wrong!

[ multiple words here = "bar" ]

[ "$foo" = bar ]

[[ $foo == bar ]]

cd -P -- "$(dirname -- "$f")"

case $foo in
    ("" | *[!0123456789]*)
        printf '$foo is not a sequence of decimal digits: "%s"\n' "$foo" >&2
        exit 1
        ;;
    *)
        [ "$foo" -gt 7 ]
esac

[bar="$foo"]     # Wrong!
[ bar="$foo" ]   # Still wrong!
[bar = "$foo"]   # Also wrong!
[[bar="$foo"]]   # Wrong again!
[[ bar="$foo" ]] # Guess what?  Wrong!
[[bar = "$foo"]]



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
