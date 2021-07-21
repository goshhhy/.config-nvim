.config/nvim
============

first, ensure you have a [nerd-compatible font](https://github.com/ryanoasis/nerd-fonts) 
installed and set up in your terminal - this configuration needs them.

then, if you are using neovim, clone into ~/.config/nvim/.

if you are using vim, do the same, then run:

    ln -s ~/.config/nvim/init.vim ~/.vimrc

then set up [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start)
using their official instructions.

this configuration will work with standard vim, but functionality will be
slightly degraded: the vscode-like autocomplete provided by coc-nvim will
not work, and the appearance will be slightly less polished. i recommend
using neovim instead.

if using neovim, you can set up autocomplete plugins and language servers 
by following [coc-nvim](https://github.com/neoclide/coc.nvim)'s instructions.
if you have clangd installed, this configuration should work out of the box.
