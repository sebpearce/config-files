set nocompatible " be iMproved, required
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
set termguicolors
set background=dark
set laststatus=2
set backspace=indent,eol,start
set nocursorline
set ignorecase
set hlsearch
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set iskeyword+=- " Include hyphens as part of word objects
set incsearch

" Plugins
" =======

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/tComment'
Plug 'tmhedberg/matchit'
Plug 'elmcast/elm-vim'
Plug 'thoughtbot/vim-rspec'
Plug 'jgdavey/tslime.vim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
call plug#end()"

filetype off
filetype plugin indent on    " required for ultisnips

" ultisnips trigger configuration.
" do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" if you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories=["ultisnips"]

" tslime config
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" show line numbers in netrw
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
" hide .DS_Store in netrw
let g:netrw_list_hide = '.DS_Store'
" hide netrw banner
let g:netrw_banner = 0
" open in vertical split
" let g:netrw_browse_split = 2
" use tree view
let g:netrw_liststyle = 0


" File-specific
" =============

" use 4 spaces for Elm files
autocmd Filetype elm setlocal ts=4 sts=4 sw=4

" ignore elm in polyglot plugin
let g:polyglot_disabled = ['elm']

" ignore mappings in elmcast/elm-vim plugin
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1


" Key mappings
" ============

nnoremap j gj
nnoremap k gk

" use \\ to clear search
nnoremap <silent> <Bslash> :nohlsearch<CR>

" splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" leader mappings
map <Space> <Leader>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>x :x!<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>y ^y$
nnoremap <Leader>v ^vg_
nnoremap H ^
nnoremap L g_
vmap H ^
vmap L g_
" duplicate selection
vmap <Leader>d y'>p
" copy current filename to system clipboard
noremap <Leader>% :let @+=expand("%:p")<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
" append semicolon to end of line
noremap <Leader>; <Esc>g_a;<Esc>

" rspec.vim mappings
map <Leader>t :w <bar> :call RunCurrentSpecFile()<CR>
map <Leader>s :w <bar> :call RunNearestSpec()<CR>
map <Leader>l :w <bar> :call RunLastSpec()<CR>
" map <Leader>a :w <bar> :call RunAllSpecs()<CR>
" use bundle exec for vim-rspec
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'


" Misc
" ====

:command WipeAll 1,$bdel

" strip all whitespace on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" override netrw <C-l> mapping because I use it to switch windows
augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call Netrw_mappings()
augroup END
function! Netrw_mappings()
    nnoremap <buffer> <C-l> <C-w>l
endfunction
