# void-src.sh
A script for installing packages through xbps-src on Void Linux

Thanks to Jake@Linux for his amazing video on the subject.

# Setup

First, you need to clone the void-packages repository from the official void-linux github:

`git clone https://github.com/void-linux/void-packages ~/void-packages`

In that directory, in case you need propietary packages, you need to execute this command:

`https://github.com/void-linux/void-packages`

# Usage

To install a package run:
`./void-src.sh <package-name>`

# Aliases

I'd recommend using an alias to make it more convenient to use.

`echo alias xbps-src=/path/to/void-src.sh >> ~/.bashrc` or `~/.zshrc` in case you're using zsh instead of bash.

# Changing mirrors
Somtimes the default mirror may be a little slow depending on where you are in the world. For that, Void provides a list of alternative mirrors; They can be found in the official documentation of Void Linux at `https://docs.voidlinux.org/xbps/repositories/mirrors/index.html`.

The configuration files for mirrors and repos are located in `void-packages/etc/xbps.d/`. You can edit the repositories using sed similar to changing them for xbps found in the documentation.
