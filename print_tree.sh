#!/bin/bash
directory=$1
max_depth=$2

# Print the directory structure
find "$directory" -maxdepth "$max_depth" \( -name '.idea' -o -name '.git' -o -name 'node_modules' -o -name '.next' \) -prune -o -print | 
    sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"


# To run the script, use the following command:
# ./print_tree.sh /path/to/directory 2
# The first argument is the path to the directory and the second argument is the maximum depth to print the directory structure.
# For example, to print the directory structure of the current directory up to a depth of 2, use the following command:
# ./print_tree.sh . 2