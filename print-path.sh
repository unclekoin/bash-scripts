#!/usr/bin/env bash
#
# Author: Pavel Koryakin
# Date Created: 2023-09-16
# Last Modified: 2023-09-16
#
# Description: Prints the value of the variable PATH line by line
#
# Usage: print-path.sh

set -euo pipefail

echo  $PATH | tr : '\n' | sort --ignore-case
