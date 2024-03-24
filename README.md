# Quick setup script for open-interpreter

## Usage

1. Clone this repository into `~/.intepreter` directory.

   *Note: It doesn't have to be this directory but it makes the most sense.*

   ```shell
   git clone https://github.com/vduseev/open-interpreter-setup ~/.interpreter
   ```

1. Run the installation script

   ```shell
   $ ~/.interpreter/install.sh

   This script is going to create 2 symlinks for interpreter in /usr/local/bin:

   interpreter
   and a shorthand: i

   Creating symlinks there allows for interpreter to be called from any directory.
   However, creating symlinks in /usr/local/bin/ requires sudo permissions.

   The script will now ask for your password. Please press Ctrl+C to safely stop
   this script from proceeding any further if you are not comfortable with this
   operation. You can verify the source code of this script at:
   https://github.com/vduseev/open-interpreter-install

   Password:
   Symlinks were installed!
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
   $ interpreter

   ▌ Model set to gpt-4

   Open Interpreter will require approval before running code.

   Use interpreter -y to bypass this.

   Press CTRL-C to exit.

   >
   ```

