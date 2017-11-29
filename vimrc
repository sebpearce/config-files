set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme material-theme
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
" set t_Co=256
set termguicolors
set background=dark
set laststatus=2
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=0 " Fix lag when ESC key is pressed to exit insert mode
set nocursorline
set ignorecase
set hlsearch
hi LineNr ctermbg=black
hi CursorLine ctermbg=233
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
" Include hyphens as part of word objects
set iskeyword+=-
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'auto-pairs-gentle'
Plug 'vim-scripts/tComment'
Plug 'tmhedberg/matchit'
Plug 'elmcast/elm-vim'
Plug 'thoughtbot/vim-rspec'
Plug 'jgdavey/tslime.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'tpope/vim-fugitive'
call plug#end()"

filetype off
filetype plugin indent on    " required

" tslime config
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" Use 4 spaces for Elm files
autocmd Filetype elm setlocal ts=4 sts=4 sw=4

" Ignore elm in polyglot plugin
let g:polyglot_disabled = ['elm']

" Ignore mappings in elmcast/elm-vim plugin
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

" Show line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
" Hide .DS_Store in netrw
let g:netrw_list_hide = '.DS_Store'
" Hide netrw banner
let g:netrw_banner = 0
" Open in vertical split
" let g:netrw_browse_split = 2
" Use tree view
let g:netrw_liststyle = 0

" Use <C-l> to clear search
nnoremap <silent> <Bslash> :nohlsearch<CR>

nnoremap j gj
nnoremap k gk

" Better splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" Leader mappings
"================
map <Space> <Leader>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :bw<CR>
nnoremap <Leader>x :x!<CR>
nnoremap <Leader>p :CtrlPMixed<CR>
nnoremap <Leader>e :Vexplore<CR>
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>y ^y$
nnoremap <Leader>v ^vg_
nnoremap H ^
nnoremap L g_
vmap H ^
vmap L g_
" copy current filename to system clipboard
noremap <Leader>% :let @+=expand("%:p")<CR>
noremap <Leader>T :tabe<CR>
noremap <Leader>H gT<CR>
noremap <Leader>L gt<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
" append semicolon to end of line
noremap <Leader>; <Esc>g_a;<Esc>

" RSpec.vim mappings
map <Leader>t :w <bar> :call RunCurrentSpecFile()<CR>
map <Leader>s :w <bar> :call RunNearestSpec()<CR>
map <Leader>l :w <bar> :call RunLastSpec()<CR>
" map <Leader>a :w <bar> :call RunAllSpecs()<CR>
" Use bundle exec for vim-rspec
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

" duplicate selection
vmap <Leader>d y'>p

" Combine with F1 mapped to fg in terminal to toggle
" map <F1> <C-z>

" HARD MODE! >:)
" nmap h <NOP>
" nmap j <NOP>
" nmap k <NOP>

" Override netrw <C-l> mapping because I use it to switch windows
augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call Netrw_mappings()
augroup END
function! Netrw_mappings()
    nnoremap <buffer> <C-l> <C-w>l
endfunction
