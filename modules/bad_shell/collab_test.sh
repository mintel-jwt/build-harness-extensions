#!/bin/bash

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
