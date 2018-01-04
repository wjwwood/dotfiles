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

# Setting up SublimeClang

Copied from https://www.rightinfonow.com/install-sublimeclang-sublime-3/:

```
Download sublimeClang through git to the packages folder of Sublime Text 3
 a) git clone --recursive https://github.com/quarnster/SublimeClang SublimeClang
 b) cd SublimeClang
 c) git pull && git submodule foreach --recursive git pull origin master
Download the SublimeClang-1.0.41.sublime-package from https://github.com/quarnster/SublimeClang/downloads and rename it to SublimeClang-1.0.41.zip.
Extract the zip-file and copy libclang.dll and libcache.dll (if you use a 32-bit version of Sublime Text 3) or libclang_x64.dll and libcache_x64.dll (if you use a 64-bit verision of Sublime Text 3) into “SublimeClang\internals” in the package folder of Sublime Text 3.
Configure SublimeClang settings file as needed. See examples in Preferences -> Package Settings -> SublimeClang -> Settings – Default.
Restart Sublime Text 3 and code completion should work if your settings are correct (see step 4).
```

On macOS I copied the `libclang.dylib` and `libcache.dylib` instead.
