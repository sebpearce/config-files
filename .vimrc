set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set visualbell
set history=10000
set mouse=a
set scrolloff=10
set shiftwidth=2
set tabstop=2
set expandtab
set clipboard=unnamed
set number
set relativenumber
set numberwidth=4
set noswapfile
set t_Co=256
let base16colorspace=256
colorscheme base16-default
set background=dark
set laststatus=2
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=0 " Fix lag when ESC key is pressed to exit insert mode
" set cursorline
highlight LineNr ctermbg=black

" Use the_silver_searcher with ack.vim:
let g:ackprg = 'ag --nogroup --nocolor --column'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
runtime macros/matchit.vim
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ervandew/supertab'
Plugin 'xenoterracide/html.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tComment'
Plugin 'auto-pairs-gentle'
Plugin 'kien/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'chriskempson/base16-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tmhedberg/matchit'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mileszs/ack.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Use bundle exec for vim-rspec
let g:rspec_command = "!bundle exec rspec {spec}"

" Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Don't skip over wrapped lines
nnoremap j gj
nnoremap k gk

" Easier than <S-;>
nnoremap , :

" Leader mappings
map <Space> <Leader>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>x :x!<CR>
nnoremap <Leader>p :CtrlPMixed<CR>

" Combine with F1 mapped to fg in terminal to toggle
map <F1> <C-z>

" Tabs
nmap <Left> gT
nmap <Right> gt
