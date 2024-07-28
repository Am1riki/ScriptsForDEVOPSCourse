#!/bin/bash
file="$1"
word_count=$(wc -w < "$file_name")
echo "Количество слов в файле $file_name: $word_count"