""""""""MAIN""""""""

set nocompatible
set path+=**
set wildignorecase
set history=400
set autoread
set so=8
set wildmenu
set showcmd
set hlsearch
set incsearch
set magic
set showmatch
set encoding=utf-8
set smarttab
set autoindent
set smartindent
set wrap
set laststatus=2
set statusline=\ %<%F%m%r%h%w\ %y\ %=\ %l/%L\ %p%%\ 
set cursorcolumn
set cursorline
set hidden
set backspace=indent,eol,start
set mouse=c
let netrw_bufsettings="noma nomod nowrap nonu nornu ro nobl noswapfile"
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=15
let g:netrw_list_hide='.*\.pyc'
autocmd FileType *.py set tabstop=4|set shiftwidth=4|set expandtab
autocmd BufWrite *.py :call DTWS()
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" No sound or blinking
set noerrorbells visualbell t_vb=

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile


""""""""STYLE""""""""

hi clear
syntax reset
syntax enable
colorscheme habamax


""""""""MAPPING""""""""

let mapleader = "\<space>"
noremap j gj
noremap k gk
nmap <silent> <F4> :Lexplore<cr>
nmap <leader><bs> :close<cr>
nmap <leader>n :set nu!<cr>
nmap <leader>r :reg<cr>
vmap <leader>/ "zy/<c-r>z<cr>

" Switch CWD to the directory of the current buffer
map <leader>cd :lcd %:p:h<cr>:pwd<cr>

" Substitute current word/selection
nmap <F3> viwy:%s/\<<C-R>"\>//g<Left><Left>
vmap <F3> y:%s/<C-R>"//g<Left><Left>

" Moving selected lines up & down
vmap <Down> :m'>+1<cr>gv
vmap <Up> :m'<-2<cr>gv

" Disable highlight
nmap <silent> <leader><cr> :noh<cr>

" WinSize adjusting
nmap <C-Right> <C-W>>
nmap <C-Left> <C-W><
nmap <C-Up> <C-W>+
nmap <C-Down> <C-W>-

" Buffers
nmap <leader>b :buffers<cr>:buffer 
nnoremap <BS> :bp<bar>sp<bar>bn<bar>bd<CR>

nmap <leader>h :bprevious<cr>
nmap <leader>l :bnext<cr>

" Toggle paste mode
nmap <leader>p :setlocal paste!<cr>


""""""""FUNC""""""""

" Delete trailing white space on save
function! DTWS()
  %s/\s\+$//ge
endfunction
