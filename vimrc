set nocompatible              " be iMprovedj required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/html5.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
" Plugin 'editorconfig/editorconfig-vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'szw/vim-tags'
" Plugin 'beautify-web/js-beautify'
Plugin 'jason0x43/vim-js-indent'
Plugin 'othree/yajs.vim'
" Plugin 'leshill/vim-json'
Plugin 'elzr/vim-json'
Plugin 'mileszs/ack.vim'
" Plugin 'millermedeiros/vim-esformatter'
" Plugin 'qpkorr/vim-bufkill'
Plugin 'leafgarland/typescript-vim'
" Plugin 'Shutnik/jshint2.vim'
" Plugin 'wookiehangover/jshint.vim'
" Plugin 'webdesus/polymer-ide.vim'

Bundle 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" theme
syntax enable
set background=dark
colorscheme solarized

" set guifont=Monaco:h16
" set guifont=Menlo\ Regular:h14

set undofile
set undodir=~/.vim/undodir
set nu
set textwidth=0 wrapmargin=0
set textwidth=80
set cul
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set hidden
set path+=**
set wildmenu
set showmode
set showcmd
set laststatus=2
set ruler
set autoindent
set cindent
imap <C-Return> <CR><CR><C-o>k<Tab>
" turn syntax highlighting
syntax on
set rtp+=~/.fzf
" set rtp+=~/.vim/bundle/jshint2.vim
inoremap <esc> <nop>
inoremap jk <esc>

let mapleader = ","
let maplocalleader = "\\"
let g:vim_tags_auto_generate = 1

" save with ,s both in normal and insertmode.
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
nnoremap <leader>p :set paste<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
    nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
    nnoremap <leader>b :Buffers<cr>
    nnoremap <c-j> :m .+1<cr>
    nnoremap <c-k> :m .-2<cr>

    map <c-i> :call HtmlBeautify()<cr>
    vnoremap <c-j> :call RangeJsBeautify()<cr>
    vnoremap <c-h> :call RangeHtmlBeautify()<cr>
    vnoremap <c-c> :call RangeCSSBeautify()<cr>
    " vnoremap <c-s> :call RangeJsonBeautify()<cr>


    " toggle between windows.
    nnoremap <leader>w <C-w>w
    " split window vertically
    nnoremap <leader>v <C-w>v
    " move to left window
    nnoremap <leader>h <C-w>h
    " move to right window
    nnoremap <leader>l <C-w>l
    " move to up window
    nnoremap <leader>k <C-w>k
    " move to down window
    nnoremap <leader>j <C-w>j
    " move current window to right
    nnoremap <leader>r <C-w>r
    " increase window width
    nnoremap + :vertical res +5<cr>
    " decrease window width
    nnoremap _ :vertical res -5<cr>

    " search file.
    nnoremap <leader>f :Files<cr>
    " search in open buffers.
    nnoremap <leader>se :Lines<cr>
    " search in current buffer.
    nnoremap <leader>c :BLines<cr>
    " commands
    nnoremap <leader><leader> :Commands<cr>
    " search string across all files/folders.
    nnoremap <leader>a :Ack<space>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" format html file on saving.
" autocmd BufWritePre *.html :normal gg=G
" move cursor to the open window instead of tree window.
autocmd vimenter * NERDTree | wincmd p
" show hiddden files in nerd tree.
let NERDTreeShowHidden=1

" airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" let g:javascript_plugin_flow = 1
"
" let g:javascript_plugin_jsdoc = 1

" syntastic configuration

let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_html_checkers=['jshint']
" let g:syntastic_javascript_eslint_args = '--rulesdir "$HOME"/.jscsrc'

set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
autocmd BufNewFile,BufRead *.json set ft=javascript


" autocmd FileType javascript noremap <buffer>  <c-b> :call JsBeautify()<cr>
" for json
" autocmd FileType json noremap <buffer> <c-b> :call JsonBeautify()<cr>
" for jsx
" autocmd FileType jsx noremap <buffer> <c-b> :call JsxBeautify()<cr>
" for html
" autocmd FileType html noremap <buffer> <c-b> :call HtmlBeautify()<cr>
" for css or scss
" autocmd FileType css noremap <buffer> <c-b> :call CSSBeautify()<cr>

" --- format JavaScript source code using esformatter --

nnoremap <silent> <leader>es :Esformatter<CR>
vnoremap <silent> <leader>es :EsformatterVisual<CR>

" delete buffer but keep window open (requires bufkill.vim)
" map <leader>u :BD<CR>
map <leader>u :bp\|bd #<CR>
" let g:ackprg = "ag --vimgrep"
