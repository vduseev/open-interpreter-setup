# Quick setup script for open-interpreter

## Usage

1. Clone this repository into `~/.intepreter` directory.

   *Note: It doesn't have to be this directory but it makes the most sense.*

   ```shell
   git clone https://github.com/vduseev/open-interpreter-setup ~/.interpreter
   ```

1. Run the installation script

   This script will perform the following steps:
   
   - Create a new Python virtual environment to host the `open-interpreter` package.
   - Install `open-interpreter` into it.
   - Create symlinks for `interpreter` executable in your `/usr/local/bin/` directory
     so that you can call the interpreter from anywhere.

   ```shell
   ~/.interpreter/install.sh
   ```

