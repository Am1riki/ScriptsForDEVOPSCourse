#!/bin/bash

file_count=0
directory_count=0

for item in *; do
    if [ -f "$item" ]; then
        file_count=$((file_count + 1))
    elif [ -d "$item" ]; then
        directory_count=$((directory_count + 1))
    fi
done

echo "Количество файлов: $file_count"
echo "Количество директорий: $directory_count"
