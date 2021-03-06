" vimrc
" Author: Oriol Gual
" Source: https://github.com/oriolgual/vimfiles

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" ----------
" Leader key
" ----------
let mapleader = ","
let maplocalleader = "."

" -------
" BUNDLES
" -------

Bundle 'rking/ag.vim'
" Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'Townk/vim-autoclose'
Bundle 'tomtom/tcomment_vim'
Bundle 'bling/vim-airline'
Bundle 'ctrlpvim/ctrlp.vim'

" Bundle 'mattn/webapi-vim'
" Bundle 'mattn/gist-vim'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-cucumber'
" Bundle 'slim-template/vim-slim'
" Bundle 'leebo/vim-slim'
" Bundle 'rking/vim-ruby-refactoring'
" Bundle 'tpope/vim-dispatch'

" Bundle 'nono/vim-handlebars'
" Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'

Bundle 'vim-scripts/ctags.vim'
Bundle 'mrxd/bufkill.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/syntastic'
Bundle 'elixir-lang/vim-elixir'
Bundle 'benmills/vimux'
Bundle 'spiegela/vimix'
let g:vimix_map_keys = 1

" Bundle 'codegram/vim-haml2slim'

" Default color theme
Bundle 'altercation/vim-colors-solarized'
set background=light
colorscheme solarized

" Bundle 'junkblocker/patchreview-vim'
" Bundle 'codegram/vim-codereview'

Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'

" Bundle 'tpope/vim-abolish'

Bundle 'derekwyatt/vim-scala'
Bundle 'majutsushi/tagbar'

" ------------
" VIM SETTINGS
" ------------

set autoindent
set autoread
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=menuone,preview
set expandtab
set foldcolumn=0
set foldlevel=9
set foldmethod=indent
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set gdefault
set laststatus=2
set list
set listchars=trail:.
set modelines=5
set nobackup
set noeol
set nofoldenable
set noswapfile
set number
set numberwidth=4
set ruler
set shell=/bin/zsh
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set tabstop=2
set softtabstop=2
set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set wildignore+=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.gitkeep,.DS_Store,*.log,node_modules/*
set textwidth=79
set formatoptions=n
set colorcolumn=79
set tw=79
set t_Co=256
set iskeyword-=_
"set clipboard=unnamed
set re=1

if has("gui_running")
    set guioptions-=T " no toolbar set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
endif
set guifont=Monaco:h12

" Autocommands depending on file type
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et
autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace
" --------
" MAPPINGS
" --------

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

nnoremap ; :

" Search
nmap <Space> /
nnoremap / /\v
vnoremap / /\v

" Clear search
nnoremap <leader><space> :noh<cr>

" Saving and buffer stuff
nmap <leader><ESC> :q!<CR>
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>

" Switch between / delete buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" Splits
nnoremap <leader>v :vs<CR> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Paste mode
set pastetoggle=<F2>

" Git blame
vmap <leader>gb :Gblame<CR>

" ----------------
" PLUG-IN SETTINGS
" ----------------

" Powerline (fancy status bar)
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

" Ag (Regex-based search)
nmap <leader>a :Ag
" Rotating among results
map <C-n> :cn<CR>
" map <C-p> :cp<CR>

" TComment
map <Leader>co :TComment<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" Ctags
" You can use Ctrl-] to jump to a function.... Ctrl-p will jump back
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-p> :pop<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nnoremap <leader>. :CtrlPTag<cr>

" You can cycle through multiple function definitions using
" these mappings. This maps to my windows key + left/right arrows
map <F7> :tnext<CR>
map <F9> :tprev<CR>

" Ctrl-p
let g:ctrlp_map = '<leader>o'
let g:ctrlp_custom_ignore = '\v[\/](doc|tmp|log|coverage|fixtures|node_modules)$'

" NERDtree
nmap <silent> <leader>p :NERDTreeToggle<cr>%

" Surround
" ,' switches ' and "
nnoremap <leader>' ""yls<c-r>={'"': "'", "'": '"'}[@"]<cr><esc>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_echo_current_error=1
let g:syntastic_auto_jump=0

" --------------------
" CUSTOM CONFIGURATION
" --------------------
let my_home = expand("$HOME/")
if filereadable(my_home . '.vimrc.local')
  source ~/.vimrc.local
endif

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

syntax on
filetype indent plugin on

" Vim dispatch
autocmd FileType ruby
      \ if expand('%') =~# '_test\.rb$' |
      \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
      \ elseif expand('%') =~# '_spec\.rb$' |
      \   compiler rspec | setl makeprg=bundle\ exec\ rspec\ \"%:p\" |
      \ else |
      \   compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
      \ endif