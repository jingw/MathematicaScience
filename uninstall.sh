#!/bin/bash

source files.properties
echo "Removing $files from $directory"
cd ~/$directory && rm $files
