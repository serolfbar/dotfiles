#!/bin/bash

# Variable to store the current layout
get_layout() {
    setxkbmap -query | grep layout | awk '{print $2}'
}

# Function to toggle the layout
toggle_layout() {
    current_layout=$(get_layout)
    if [ "$current_layout" = "us" ]; then
        CURRENT_LAYOUT="ca"
    else
        CURRENT_LAYOUT="us"
    fi
    
    # Set the new layout
    setxkbmap "$CURRENT_LAYOUT"
    
}

# Call the toggle function
toggle_layout

