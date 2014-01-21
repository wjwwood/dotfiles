This is how I setup my new systems.

# Setup dotfiles

First I clone this repository into a folder in my home directory (it must live here permanently)

Then I run the `install.sh` file in this repository:

```
$ sh install.sh
```

This will link any files or folder in this repository which begin with an `_` into the home directory, replacing the leading `_` with a `.`.

# Install oh-my-zsh

My `zsh` configurations require oh-my-zsh to be installed. See this: https://github.com/robbyrussell/oh-my-zsh

# oh-my-zsh theme

Once oh-my-zsh is installed, cp or link the `oh-my-zsh/themese/wjwwood.zsh-theme` file from this repository into the `~/.oh-my-zsh/themes` folder.

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
