#!/bin/bash
# Changes the extension of all files

echo Program to change the extension of all files
echo Enter the extension to be change:
read extension1
echo Enter the extension you want:
read extension2

# Select all files in the current folder
files=$( ls -1 *.$extension1 )

# Iterate in the archives
for file in $files
do
    # Change the extension of the file to the new extension
    mv ./$file ./${file%.*}.$extension2
done

echo Extensions successfully changed
