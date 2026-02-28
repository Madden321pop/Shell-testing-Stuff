#!/bin/bash

MAIN_DIR="$HOME/Shell-testing-Stuff/"
GCC_DIR=$(which gcc)

if command -v gcc >/dev/null 2>&1; then
    echo "GCC is Installed!"
    echo "GCC Found in $GCC_DIR"
else
    echo "FATAL: GCC Not found!"
    exit 1;
fi

if [ -d "$MAIN_DIR" ]; then
    clear
    echo "Notice: Directory Found $MAIN_DIR"
    echo "FAILED: Please remove the old Directory"
    exit 1;

else
    clear
    echo "Starting Application..."
    echo "Copying Github..."

    cd "$HOME" || exit

    git clone https://github.com/Madden321pop/Shell-testing-Stuff

    

    if [ -d "$MAIN_DIR" ]; then
        cd "Shell-testing-Stuff" || exit
        echo "Fully Entered $MAIN_DIR!"
        echo "Success... Moving on."

    else
        echo "Error: Git Clone Failed!"
        exit 1
    fi
fi
