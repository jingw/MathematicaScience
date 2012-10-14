#!/bin/bash

source files.properties

echo "Adding $files to $directory"
cp $files ~/$directory
