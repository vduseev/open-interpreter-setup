# Quick setup script for open-interpreter

## Usage

### Clone this repository into `~/.intepreter` directory.

*Note: It doesn't have to be this directory but it makes the most sense.*

```shell
git clone https://github.com/vduseev/open-interpreter-setup ~/.interpreter
```

Run the installation script

```shell
$ ~/.interpreter/install.sh

Will be using Python 3.11.7 found in /Users/vduseev/.pyenv/shims/python...
Create a python virtual environment? (Y/n)

Creating a virtual environment in /Users/vduseev/.interpreter/.venv...
Virtual environment created successfully in /Users/vduseev/.interpreter/.venv!
Install open-interpreter and its dependencies? (Y/n)

Installing open-interpreter...
...

Installation of open-interpreter completed successfully!
Install symlink to open-interpreter in /usr/local/bin? (Y/n)

This script is now going to create 2 symlinks for interpreter in /usr/local/bin:

interpreter
and a shorthand: i

Creating symlinks there allows for interpreter to be called from any directory.
However, creating symlinks in /usr/local/bin/ requires sudo permissions.

The script will now ask for your password. Please press Ctrl+C to safely stop
this script from proceeding any further if you are not comfortable with this
operation. You can verify the source code of this script at:
https://github.com/vduseev/open-interpreter-install

Symlinks were installed!
Would you like this script to save your OpenAI API key in /Users/vduseev/.interpreter/keys file? (Y/n) n

Installation complete!
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

You can invoke open-interpreter in your shell `$ i` or `$ interpreter` from any directory:

```shell
$ i

▌ Model set to gpt-4

Open Interpreter will require approval before running code.

Use interpreter -y to bypass this.

Press CTRL-C to exit.

>
```

