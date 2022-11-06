" https://github.com/vim/vim/issues/6607#issuecomment-668604452
set t_u7=

" Show whitespace
set list

" Smart indenting
filetype plugin indent on

set cursorline

set scrolloff=2

" My shortcuts
inoremap jj <Esc>
nnoremap Q {gq}
nmap <C-c> :q!<Enter>
nmap zz :up<Enter>

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" Smart tabbing
set smarttab

" .pp file extension should mean Puppet, not Pascal
let g:polyglot_disabled = ['pascal']

" Activate Pathogen plugin manager
execute pathogen#infect()

if has('gui_running')
    colo nova
    set gfn=Meslo\ LG\ L\ DZ\ 14
    set go=aegimLt
else
   let g:gruvbox_contrast_dark='soft'
   set background=dark
   colo gruvbox
endif

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%v,%l/%L\ %P
" Always show status line
set laststatus=2

set textwidth=79

" Create all swp files in dedicated dir
set directory=~/.vimtmp

set termguicolors
syntax on
set hlsearch
