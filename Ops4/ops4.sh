#!/bin/bash

#    Script Name: Ops Challenge 4
#    Author: Jason Kingery
#    Date of last revision 06/09/21
#    Description of purpose:
#Creates four directories: dir1, dir2, dir3, dir4
#Put the four directories in an array
#References the array variable to create a new .txt file in each directory

#make directory function
make_dir() {
    for i in {1..4}; do
        command mkdir "dir$i"
    done
}

make_dir

#putting directories in an array
dir_array=("dir1" "dir2" "dir3" "dir4")

#making text files in directories

make_text() {
    for i in {0..3}; do
        add_text="${dir_array[$i]}"
        touch "${add_text}/$i".txt
    done
}
make_text
