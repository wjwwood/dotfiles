This is how I setup my new systems.

# Setup dotfiles

First I clone this repository into a folder in my home directory (it must live here permanently)

Then I run the `install.sh` file in this repository:

```
$ bash install.bash
```

This will link any files or folder in this repository which begin with an `_` into the home directory, replacing the leading `_` with a `.`.

# Install oh-my-zsh

My `zsh` configurations require oh-my-zsh to be installed. See this: https://github.com/robbyrussell/oh-my-zsh

# oh-my-zsh theme

The ZSH theme should be set automatically because it is stored in `_custom.oh-my-zsh/themes/wjwwood.zsh-theme`.

However, if it is not, `cp` or link the `_custom.oh-my-zsh/themes/wjwwood.zsh-theme` file from this repository into the `~/.oh-my-zsh/themes` folder.

# Sublime Text 3

Install sublime text 3: http://www.sublimetext.com/3

Install the package manger: https://sublime.wbond.net/installation

Install these packages:

- SublimeLinter
- SublimeLinter-annotations
- SublimeLinter-pep8
- SublimeLinter-flake8
- SublimeLinter-pyyaml
- SublimeCodeIntel
- SublimeClang (must clone manually: https://github.com/quarnster/SublimeClang)
- VCSGutter

# Other References

https://code.google.com/p/iterm2/wiki/Keybindings
