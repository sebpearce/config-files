set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set visualbell
set history=10000
set mouse=a
set scrolloff=5
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
set cursorline
set ignorecase
hi LineNr ctermbg=black
hi CursorLine ctermbg=233

set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Use the_silver_searcher with ack.vim:
let g:ackprg = 'ag --nogroup --nocolor --column'

" change cursor shape between insert and normal mode in iTerm2.app
" if $TERM_PROGRAM =~ "iTerm"
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
" endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
runtime macros/matchit.vim
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ervandew/supertab'
" Plugin 'xenoterracide/html.vim'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-haml'
" Plugin 'tpope/vim-markdown'
Plugin 'sheerun/vim-polyglot'
Plugin 'elmcast/elm-vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tComment'
Plugin 'auto-pairs-gentle'
Plugin 'kien/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'chriskempson/base16-vim'
" Plugin 'itchyny/lightline.vim'
Plugin 'tmhedberg/matchit'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mileszs/ack.vim'
Plugin 'mattn/emmet-vim'
" Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype off
filetype plugin indent on    " required

" Ignore elm in polyglot plugin
let g:polyglot_disabled = ['elm']

" Ignore mappings in elmcast/elm-vim plugin
let g:elm_setup_keybindings = 0

" Hide .DS_Store in netrw
let g:netrw_list_hide = '.DS_Store'

" NERDTree settings
" let NERDTreeShowHidden=1

" RSpec.vim mappings
map <Leader>t :w <bar> :call RunCurrentSpecFile()<CR>
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
" nnoremap j gj
" nnoremap k gk

" Use \\ to insert line above and move to it while in insert mode
imap \\ <Esc>ko

" Easier than <S-;>
nnoremap , :

" Leader mappings
map <Space> <Leader>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>x :x!<CR>
nnoremap <Leader>p :CtrlPMixed<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" Combine with F1 mapped to fg in terminal to toggle
map <F1> <C-z>

" Tabs
nmap <S-Left> gT
nmap <S-Right> gt
nmap <S-Up> :tabe<CR>

" duplicate selection
vmap <Leader>d y'>p

" append semicolon to end of line
map <kMinus> <Esc>g_a;<Esc>

" copy current filename to system clipboard
noremap <silent> <F4> :let @+=expand("%:p")<CR>
