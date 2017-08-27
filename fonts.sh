#!/bin/bash

echo "downloading fonts..."
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Ubuntu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip

if [[ ! -d ~/.fonts ]]; then
    echo "creating destination ~/.fonts"
    mkdir ~/.fonts
else
    echo "Directory already exists. Cleaning files."
    rm -Rf ~/.fonts/*
fi

for file in *.zip; do
    echo "extracting font: $file" 
    dir=${file%.zip}
    
    unzip -d ~/.fonts/$dir $file 

    echo "Finished extracting to ~/.fonts/$dir"

    echo "Deleting source file $file"
    rm -f $file
done

echo "Updating font-cache"
fc-cache -vf

