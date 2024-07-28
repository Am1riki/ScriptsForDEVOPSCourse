#!/bin/bash
archive_name="archive.tar"
files_and_directories=("file1.txt" "file2.txt" "directory1" "directory2")
echo "Создание архива $archive_name..."
tar -cvf $archive_name "${files_and_directories[@]}"
extraction_directory="extracted_files"
mkdir $extraction_directory
echo "Распаковка архива $archive_name в директорию $extraction_directory..."
tar -xvf $archive_name -C $extraction_directory
ls -lR $extraction_directory
