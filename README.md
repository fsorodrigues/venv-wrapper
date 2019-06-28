# venv-wrapper
A minimal virtual environment wrapper for Python.

## Adding script as a CLI tool

To do so, we have to make the bash function available to your environment.

##### First, create a file to hold custom tools 
We'll call it `.bash_custom_tools`. The leading `.` makes it a hidden file, avoiding unintentional deletion.

```
touch ~/.bash_custom_tools
```

##### Edit the file with a text editor
I usually use `nano` for these tasks.

```
nano ~/.bash_custom_tools
```

Add the following line to your `.bash_custom_tools` file:

```
source path/to/start-env.sh
```

##### Edit bash shell config
Find your configuration file. It is should be located inside your home folder (`~`), and is usually called `.bashrc` or `.bash_profile`.

Open the file with a text editor. I´ll again use `nano` to add the following lines to the config file.

```
if [ -f ~/.bash_custom_tools ]; then
    . ~/.bash_custom_tools
fi
```

##### Reload configuration
Run the following command on your shell:

```
source ~/.bashrc
```

This is needed to take effect immediately, but you can also close and reopen the shell the load the new tool.
