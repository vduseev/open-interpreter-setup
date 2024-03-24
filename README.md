# Quick setup script for open-interpreter

## Usage

1. Clone this repository into `~/.intepreter` directory.

   *Note: It doesn't have to be this directory but it makes the most sense.*

   ```shell
   git clone https://github.com/vduseev/open-interpreter-setup ~/.interpreter
   ```

1. Run the installation script

   ```shell
   ~/.interpreter/install.sh
   ```

   This script will perform the following steps:
   
   - Create a new Python virtual environment to host the `open-interpreter` package.
   - Install `open-interpreter` into it.
   - Create symlinks for `interpreter` executable in your `/usr/local/bin/` directory
     so that you can call the interpreter from anywhere.
   - Ask you for an OpenAI key to store locally for interpreter to use. You can skip
     this step and create the `keys` file manually:

     ```shell
     echo "export OPENAI_API_KEY=PUT_YOUR_KEY_HERE" > ~/.interpreter/keys
     ````

1. All done!

   You can invoke open-interpreter from any directory:

   ```shell
   interpreter
   ```

