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
set norelativenumber
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
set hlsearch
hi LineNr ctermbg=black
hi CursorLine ctermbg=233
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'auto-pairs-gentle'
Plug 'vim-scripts/tComment'
Plug 'tmhedberg/matchit'
Plug 'elmcast/elm-vim'
Plug 'thoughtbot/vim-rspec'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
call plug#end()"

filetype off
filetype plugin indent on    " required

" Ignore elm in polyglot plugin
let g:polyglot_disabled = ['elm']

" Ignore mappings in elmcast/elm-vim plugin
let g:elm_setup_keybindings = 0

" Show line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
" Hide .DS_Store in netrw
let g:netrw_list_hide = '.DS_Store'
" Hide netrw banner
let g:netrw_banner = 0

" Use bundle exec for vim-rspec
let g:rspec_command = "!bundle exec rspec {spec}"

" Use <C-l> to clear search
nnoremap <silent> <Bslash> :nohlsearch<CR>

" Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Leader mappings
"================
map <Space> <Leader>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x!<CR>
nnoremap <Leader>p :CtrlPMixed<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>f :FZF<CR>
" copy current filename to system clipboard
noremap <Leader>% :let @+=expand("%:p")<CR>
noremap <Leader>T :tabe<CR>
noremap <Leader>H gT<CR>
noremap <Leader>L gt<CR>
" append semicolon to end of line
noremap <Leader>; <Esc>g_a;<Esc>
" RSpec.vim mappings
map <Leader>t :w <bar> :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" duplicate selection
vmap <Leader>d y'>p

" Combine with F1 mapped to fg in terminal to toggle
" map <F1> <C-z>

" HARD MODE! >:)
" nmap h <NOP>
" nmap j <NOP>
" nmap k <NOP>
" nmap l <NOP>
