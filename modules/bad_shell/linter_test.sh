for f in $(ls *.mp3); do    # Wrong!
    some command $f         # Wrong!
done

for f in $(ls)              # Wrong!
for f in `ls`               # Wrong!

for f in $(find . -type f)  # Wrong!
for f in `find . -type f`   # Wrong!

files=($(find . -type f))   # Wrong!
for f in ${files[@]}        # Wrong!

for f in "$(ls *.mp3)"; do     # Wrong!

IFS=$'\n'
for line in $(cat file); do ...     # Wrong!

for file in ./*.mp3; do    # Better! and...
    some command "$file"   # ...always double-quote expansions!
done
