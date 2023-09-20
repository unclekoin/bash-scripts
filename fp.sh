#!/usr/bin/env bash
#
# Author: Pavel Koryakin
# Date Created: 2023-08-25
# Last Modified: 2023-08-25
#
# Description: Implements floating point operations via awk
#
# Usage: fp "6 * 0.25"

set -euo pipefail

awk "BEGIN { print $* }"
