git submodule add git://github.com/tpope/vim-fugitive.git _vim/bundle/fugitive
git submodule add git://github.com/msanders/snipmate.vim.git _vim/bundle/snipmate
git submodule add git://github.com/tpope/vim-surround.git _vim/bundle/surround
git submodule add git://github.com/tpope/vim-git.git _vim/bundle/git
git submodule add git://github.com/ervandew/supertab.git _vim/bundle/supertab
git submodule add git://github.com/sontek/minibufexpl.vim.git _vim/bundle/minibufexpl
git submodule add git://github.com/wincent/Command-T.git _vim/bundle/command-t
git submodule add git://github.com/kevinw/pyflakes-vim.git _vim/bundle/pyflakes
git submodule add git://github.com/mileszs/ack.vim.git _vim/bundle/ack
git submodule add git://github.com/sjl/gundo.vim.git _vim/bundle/gundo
git submodule add git://github.com/fs111/pydoc.vim.git _vim/bundle/pydoc
git submodule add git://github.com/vim-scripts/pep8.git _vim/bundle/pep8
git submodule add git://github.com/alfredodeza/pytest.vim.git _vim/bundle/py.test
git submodule add git://github.com/reinh/vim-makegreen _vim/bundle/makegreen
git submodule add git://github.com/vim-scripts/TaskList.vim.git _vim/bundle/tasklist
git submodule add git://github.com/vim-scripts/The-NERD-tree.git _vim/bundle/nerdtree
git submodule add git://github.com/sontek/rope-vim.git _vim/bundle/ropevim
git submodule add git://github.com/vim-scripts/VOoM.git _vim/bundle/voom
git submodule add git://github.com/vim-scripts/YankRing.vim.git _vim/bundle/yankring
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
