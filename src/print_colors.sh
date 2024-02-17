!/usr/bin/env bash

#source color
source colors.sh

# Print messages in different colors
echo -e "${RED}This is some red text${RESET}"
echo -e "${GREEN}And this is some green text${RESET}"


line_size=16

for i in {0..255}; do
    printf "\e[38;5;${i}m%3d\e[0m " "$i"
    if (( (i + 1) % line_size == 0 )); then
        echo  
    fi
done
