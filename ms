#!/usr/bin/env bash
#
# Author: Pavel Koryakin
# Date Created: 2023-09-16
# Last Modified: 2023-09-16
#
# Description: Displays a list of user scripts
#
# Usage: ms

set -euo pipefail

directory="$HOME/bin"

PS3='Select script... '
select script in exit $(ls $directory | grep sh); do
    case $REPLY in
    1 | q | x | quit | exit)
        exit 0
        ;;
    *)
        break
        ;;
    esac
done

$script
