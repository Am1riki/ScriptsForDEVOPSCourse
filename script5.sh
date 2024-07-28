#!/bin/bash

file="test.txt"

cat <<EOF > $file
HELLO!
I WANT TO BE
THE BEST
DEVOPS SPECIALIST!
EOF

tac "$file"