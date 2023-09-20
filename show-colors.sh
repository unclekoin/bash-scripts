#!/usr/bin/env bash

set -euo pipefail

# Author: Pavel Koryakin
# Date Created: 2023-08-18
# Last Modified: 2023-08-18
#
# Description: Show list all available colours and their codes
#
# Usage: show_colors

color=16;
 
while [ $color -lt 245 ]; do
echo -e "$color: \033[38;5;${color}mhello\033[48;5;${color}mworld\033[0m"
((color++));
done
