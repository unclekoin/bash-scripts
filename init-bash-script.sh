#!/usr/bin/env bash
#
# Author: Pavel Koryakin
# Date Created: 2023-08-05
# Last Modified: 2023-08-17
#
# Description: Create a template for a new script
#
# Usage: init-bash-script.sh <script-name>

set -euo pipefail

read -p "Input script name: " file

[[ "$file" ]] || { echo "You didn't enter a file name, please try again." ; exit 0; }

directory=~/Documents/BashScripts
script="${directory}/${file}.sh"
d=$(date +%Y-%m-%d)

if [ ! -f "$script" ]; then
	cat <<-EOF >$script
		#!/usr/bin/env bash
		#
	EOF

	read -p "Add the author's name: " author
	cat <<-EOF >>$script
		# Author: $author
		# Date Created: $d
		# Last Modified: $d
		#
	EOF

	read -p "Add Description: " description
	cat <<-EOF >>$script
		# Description: $description
		#
	EOF

	read -p "How to use the script?: " usage
	cat <<-EOF >>$script
		# Usage: $usage

	EOF

	echo set -euo pipefail >>$script

	chmod 744 "$script"

	code $directory
	code $script

else
	echo "init_script: cannot create file $script: File exists"
fi
