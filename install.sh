#!/bin/bash

echo "This script is going to create 2 symlinks for interpreter in /usr/local/bin:"
echo ""
echo "interpreter"
echo "and a shorthand: i"
echo ""
echo "Creating symlinks there allows for interpreter to be called from any directory."
echo "However, creating symlinks in /usr/local/bin/ requires sudo permissions."
echo ""
echo "The script will now ask for your password. Please press Ctrl+C to safely stop"
echo "this script from proceeding any further if you are not comfortable with this"
echo "operation. You can verify the source code of this script at:"
echo "https://github.com/vduseev/open-interpreter-install"
echo ""

# determine_script_location_dir
SCRIPT_DIR=""
__source="${BASH_SOURCE[0]}"
# resolve $__source until the file is no longer a symlink
while [ -h "$__source" ]; do
  SCRIPT_DIR="$( cd -P "$( dirname "$__source" )" >/dev/null 2>&1 && pwd )"
  __source="$(readlink "$__source")"
  # if $__source was a relative symlink, we need to resolve it relative
  # to the path where the symlink file was located
  [[ $__source != /* ]] && __source="$SCRIPT_DIR/$__source"
done
SCRIPT_DIR="$( cd -P "$( dirname "$__source" )" >/dev/null 2>&1 && pwd )"

# Create symlinks
sudo ln -s -f "${SCRIPT_DIR}/run.sh" /usr/local/bin/interpreter && 
echo "Symlinks were installed!" || echo "Symlinks were not installed. Check for any errors above."

