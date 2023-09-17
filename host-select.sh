#!/usr/bin/env bash
#
# Author: Pavel Koryakin
# Date Created: 2023-09-15
# Last Modified: 2023-09-15
#
# Description: Select a host from .ssh/config and connecting to a server
#
# Usage: host-select.sh

set -euo pipefail

config="$HOME/.ssh/config"

PS3='Select host... '
select host in exit $(egrep -i '^Host \w+' "$config" | cut -d' ' -f 2); do
    case $REPLY in
    1 | q | x | quit | exit)
        exit 0
        ;;
    *)
        break
        ;;
    esac
done

echo Connecting to the host $host...
ssh $host
