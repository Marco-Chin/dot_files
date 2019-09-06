"||||||||||||||||||||||||||||||||||||||||||||||||||VUNDLE||||||||||||||||||||||||||||||||||||||||||||||||||

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" on first run clone vundle how it says in its README and :PluginInstall
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'          " Plugin manager
Plugin 'scrooloose/nerdtree'           " File system explorer
Plugin 'webastien/vim-ctags'           " ctags assistant
Plugin 'tpope/vim-fugitive'            " Git warpper
Plugin 'severin-lemaignan/vim-minimap' " Map code structure
Plugin 'raimonvim/delimitmate'         " auto closing of quotes...
Plugin 'kien/ctrlp.vim'                " Fuzzy search
Plugin 'rafi/awesome-vim-colorschemes' " color schemes
Plugin 'mileszs/ack.vim'               " search tool
Plugin 'Valloric/YouCompleteMe' 
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'w0rp/ale'                      " delinter
Plugin '907th/vim-auto-save' 

call vundle#end()            " required
filetype plugin indent on    " required

"||||||||||||||||||||||||||||||||||||||||||||||||||VUNDLE_|||||||||||||||||||||||||||||||||||||||||||||||||

"||||||||||||||||||||||||||||||||||||||||||||||||||GENERAL||||||||||||||||||||||||||||||||||||||||||||||||||

"Leader
let mapleader = ","

set list!
set list listchars=tab:>-,trail:.,extends:>
"Color Scheme
set t_Co=256
colorscheme gruvbox
syntax on

"Searching
set hlsearch
set ignorecase smartcase

"Code Folding
set foldmethod=indent
nnoremap <space> za
set foldlevel=20

"line numbers
set number relativenumber

"tabbing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set shell=bash
set showmatch

"split new windows to bottom right (more intuitive)
set splitright
set splitbelow

"auto reload page if it was changed in another window
set autoread

"no scratch preview buffer

set completeopt-=preview

" bracket auto completion
" inoremap { {<CR>}<Esc>ko

" Always show tab bar at the top
set showtabline=2
set winwidth=79

"backspace key
set backspace=2

":e autocomplete settings
set wildmenu
set wildmode=longest:list,full


set tags=tags
set cursorline

set nohlsearch

"scroll
set scrolloff=15

" If a file is changed outside of vim, automatically reload it without asking
set autoread

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set statusline+=%F
set laststatus=2

"MY_KEYBINDS||||||||||||||||||||||||||||||||||||||||||||||||||

"end of line
nmap 00 $

"copy full file to clipboard
nmap <Leader>c ggvG"+y

"vimrc easy access
nmap <Leader>v :e $MYVIMRC
nmap <Leader>s :source $MYVIMRC

" For local replace
nnoremap gr :%s/\<<C-r><C-w>\>/

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

nmap fl :set foldlevel=
nmap <Leader>f :ALEFix

"MY_KEYBINDS_|||||||||||||||||||||||||||||||||||||||||||||||||



"||||||||||||||||||||||||||||||||||||||||||||||||||GENERAL_|||||||||||||||||||||||||||||||||||||||||||||||||

"||||||||||||||||||||||||||||||||||||||||||||||||||PLUGINS||||||||||||||||||||||||||||||||||||||||||||||||||

"EASYALIGN|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"auto reload

"EASYALIGN_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"NERDTREE||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"auto open nerdtree upon opening file
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR> 

"auto close vim if only nerd tree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"NERDTREE_|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"FUGITIVE||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"format the statusline
set statusline="%{FugitiveStatusline()}

"FUGITIVE_|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"CTAGS|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"ctags map
nmap <Leader>t :TagbarToggle<CR>

"CTAGS_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"MINIMAP|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

let g:minimap_show   = '<leader>ms'
let g:minimap_update = '<leader>mu'
let g:minimap_close  = '<leader>gc'
let g:minimap_toggle = '<leader>gt'

"MINIMAP_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"YCM|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType    = '<C-n>'

"YCM_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"CTRLP|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



"CTRLP_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"AUTO
"SAVE||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
let g:auto_save = 1  " enable AutoSave on Vim startup
"AUTO
"SAVE_|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"UTILSNIPS|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"syntax highlighting

"UTILSNIPS_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"ALE|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

"auto fix on save
let g:ale_ix_on_save=1
"enable completion
let g:ale_completion_enabled=1



"FIXERS
let g:ale_fixers={'python': ['add_blank_lines_for_python_control_statements', 'isort', 'yapf','autopep8','remove_trailing_lines', 'black', 'trim_whitespace']}



"ALE_||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


"FUNCTIONS
func! WordProcessor()
    " movement changes
    map j gj
    map k gk
    " formatting text
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal wrap
    setlocal linebreak
    " spelling and thesaurus
    setlocal spell spelllang=en_us
    set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
    " complete+=s makes autocompletion search the thesaurus
    set complete+=s
endfu
com! WP call WordProcessor()
