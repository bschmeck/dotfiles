# dotfiles

Dotfile management in bash, inspired by Zach Holman's [dotfiles.](http://github.com/holman/dotfiles)

More concise organization, all bash scripts are stored in the top level directory, and symlinks live in `symlinks/`

The repo expects to live in ~/.dotfiles.

Running `script/s_install` will create symlinks for everything in `symlinks/` and create an empty `~/.localrc` for machine specific and private configuration (e.g. API keys you don't want to commit to source control.)

The provided bashrc will source any bash scripts (files ending in .bash) in `~/.dotfiles/`
