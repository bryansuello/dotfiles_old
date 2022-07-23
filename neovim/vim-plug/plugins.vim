" ato-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot' " Better Syntax Support
    Plug 'scrooloose/NERDTree' " File Explorer
    " Plug 'preservim/nerdcommenter' "works similar to vim commentary, but
    " might be better
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter' "git info on the left gutter
    Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc-css'
    Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
    " Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' } "react snippets
    Plug 'SirVer/ultisnips'
    Plug 'mlaursen/vim-react-snippets'
    Plug 'mattn/emmet-vim' "emmet
    Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
    "Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
    Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
    Plug 'luochen1990/rainbow' "tag pair colorizer
    let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
    Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    Plug 'vim-airline/vim-airline' "airline plugin (The status bar)
    Plug 'vim-airline/vim-airline-themes' "airline themes
    Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
    "really good. https://github.com/NeuralNine/config-files/blob/master/init.vim
    Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() }         } "not wowrking
    Plug 'junegunn/fzf.vim'
   " Plug 'nathanaelkane/vim-indent-guides' "indent colors/guide - all that
   " gray line bothers you.
    Plug 'easymotion/vim-easymotion'
    Plug 'ctrlpvim/ctrlp.vim' "Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
    Plug 'Yggdroot/indentLine' "indent line. better than colors
    Plug 'tpope/vim-fugitive' "issue vim commands inside vim

call plug#end()
