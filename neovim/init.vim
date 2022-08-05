source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim

" set leader key
let mapleader = " " " map leader to Space
"map <leader>J <Plug>(easymotion-s)
"map <leader>j <Plug>(easymotion-f)

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that you can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set softtabstop=4
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
"set relativenumber                      " 1-10 where the cursor is
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory
"set termguicolors                       " theme cyberpunk neon better integration
set nu                                  "highlights the current line number you are on
set nohlsearch                          " removes the highlight after you search a word.
set incsearch                           "starts highlighting while you type a search
set scrolloff=8                         "only starts scrolling down when you are 8 lines to the bottom of the page
"set signcolumn=yes                      "makes and extra column on the left where errors are displayed and stuff, like linting
"set colorcolumn=80                     "sets a gudieline on the right side of the editor not to exceed when using tabs writing code. 80 for 80 columns

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

"nerdtree icons
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"changed emmet leader key from (ctrl y c) to (ctrl , ,)
let g:user_emmet_leader_key=','

"prettier format using :Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"Airline theme
"let g:airline_theme='xtermlight'
"murmur
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1 "smarter  tab line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"everything from https://github.com/vim-airline/vim-airline
"end airline

"indent guide/indent colors
let g:indent_guides_enable_on_vim_startup = 1 "auto enable
"colors
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"indent guideEnd

"THEME, COLOR SCHEME
 :colorscheme gruvbox
 "hi Normal guibg=NONE ctermbg=NONE 
  "not let dark theme background take effect

"CURSOR
"highlight iCursor guifg=white guibg=red  
"above sets the cursor insert mode color to red.
set guicursor+=i:ver100-iCursor "sets cursor line cursor on insert mode, also sets it to a 100% vertical line instead of dfault 25%.

"ctrlP mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' "set current directory as working directory if no directory specified


" let g:indentLine_setColors = 0 "overwrite gray indent color with colorscheme

" NOTES
"also reads top to bottom. if you put the theme code after the cursor code,
" the theme setting will override the cursor.

