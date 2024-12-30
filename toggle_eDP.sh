#!/usr/bin/bash
# Check if the first argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <1 or 2>"
    exit 1
fi

# Perform actions based on the argument
case "$1" in
    on)
        # Overwrite the file to make normal setting of eDP
        cp ~/dotfiles/eDP.txt ~/dotfiles/my_monitor.conf
        echo "enabled internal display"
        ;;
    off)
        # Overwrite the file with "monitor = eDP-1,disable"
        cp ~/dotfiles/disable_eDP.txt ~/dotfiles/my_monitor.conf
        echo "disabled internal display"
        ;;
    *)
        echo "Invalid argument. Use 'on' to empty the file, or 'off' to add 'monitor = eDP-1,disable'."
        exit 1
        ;;
esac

