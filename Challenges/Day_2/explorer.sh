#!/bin/bash

echo "Welcome to the Explorer Script!"
# Part 1: File and Directory Exploration

while true; do
    # List all files and directories in the current path
    ls -lh --group-directories-first    
    echo
    read -rp "Type 'exit' to quit the explorer, or press Enter to refresh the list: " choice
    
    # If user enters 'exit', break the loop and exit the script
    if [ "$choice" == "exit" ]; then
        echo "Exiting the Explorer. Goodbye!"
        break
    fi
done

    # Part 2: Character Counting
    # Display message for Part 2 and prompt the user to enter text
echo
echo "Part 2: Character Counting"
# Loop for Part 2: Character Counting
while true; do
    echo "Enter Text (press Enter without any text to quit): "
    read -r line
    # If the user enters an empty line (presses Enter), exit the character counting loop
    if [ -z "$line" ];then
        echo "exiting the character counting"
        break
    fi
    
    # Count characters in the user-entered line and display the count
    count=${#line}
    echo "character count: $count"
done        

