""""""""MAIN""""""""

filetype plugin on
set nocompatible
set path+=**
set wildignorecase
set history=400
set autoread
set number
"set relativenumber
set so=8
set wildmenu
set showcmd
set hlsearch
set incsearch
"set ignorecase
"set smartcase
set magic
set showmatch
set encoding=utf-8
"set expandtab
"set tabstop=2
"set shiftwidth=2
set smarttab
set autoindent
set smartindent
set wrap
set laststatus=2
"set statusline=\ %{HasPaste()}%f%m%r%h%w\ %y(%{&fenc?&fenc:&enc})\ %=\CWD=%{getcwd()}\ %l/%L\ %p%%\ 
set statusline=\ %<%F%m%r%h%w\ %y\ %=\ %l/%L\ %p%%\ 
set cursorcolumn
set cursorline
set hidden
set backspace=indent,eol,start
set mouse=c
"set winwidth=90
"set winheight=40
let netrw_bufsettings="noma nomod nowrap nonu nornu ro nobl"
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=15
let g:netrw_list_hide='.*\.pyc'
autocmd BufRead *.py set omnifunc=pythoncomplete#Complete
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
"autocmd CompleteDone * pclose
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" No sound or blinking
set noerrorbells visualbell t_vb=
autocmd GUIenter * set visualbell t_vb=

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile

" Pretty gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L


""""""""STYLE""""""""

hi clear
syntax reset
set t_Co=256
syntax enable
set guifont=Consolas:h12

hi Normal ctermfg=251 ctermbg=234 cterm=bold guibg=#1c1c1c guifg=#c6c6c6 gui=bold
hi Boolean ctermfg=130 ctermbg=NONE cterm=NONE guifg=#af5f00 gui=NONE
hi Character ctermfg=238 ctermbg=NONE cterm=NONE guifg=#444444 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guibg=#3a3a3a gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6c6c6c gui=NONE
hi Conditional ctermfg=223 ctermbg=NONE cterm=bold guifg=#ffd7af gui=bold
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=233 cterm=NONE guibg=#121212 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE guibg=#121212 gui=NONE
hi CursorLineNr ctermfg=16 ctermbg=102 cterm=NONE guibg=#878787 guifg=#000000 gui=NONE
hi Define ctermfg=68 ctermbg=NONE cterm=NONE guifg=#5f87d7 gui=NONE
hi Directory ctermfg=31 ctermbg=NONE cterm=bold guifg=#0087af gui=bold
hi EndOfBuffer ctermfg=250 ctermbg=234 cterm=NONE guibg=#1c1c1c guifg=#bcbcbc gui=NONE
hi ErrorMsg ctermfg=88 ctermbg=NONE cterm=bold guifg=#870000 gui=bold
hi Exception ctermfg=168 ctermbg=NONE cterm=bold guifg=#d75f87 gui=bold
hi Float ctermfg=181 ctermbg=NONE cterm=NONE guifg=#d7afaf gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guibg=#262626 guifg=#6c6c6c gui=NONE
hi Function ctermfg=144 ctermbg=NONE cterm=bold guifg=#afaf87 gui=bold
hi Identifier ctermfg=102 ctermbg=NONE cterm=NONE guifg=#878787 gui=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE guibg=#d7d787 guifg=#262626 gui=NONE
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE guifg=#ff005f gui=NONE
hi Label ctermfg=151 ctermbg=NONE cterm=NONE guifg=#afd7af gui=NONE
hi LineNr ctermfg=102 ctermbg=16 cterm=NONE guibg=#000000 guifg=#878787 gui=NONE
hi MatchParen ctermfg=119 ctermbg=111 cterm=bold guibg=#87afff guifg=#87ff5f gui=bold
hi ModeMsg ctermfg=18 ctermbg=119 cterm=bold guibg=#87ff5f guifg=#000087 gui=bold
hi NonText ctermfg=102 ctermbg=NONE cterm=NONE guifg=#878787 gui=NONE
hi Number ctermfg=152 ctermbg=NONE cterm=bold guifg=#afd7d7 gui=bold
hi Operator ctermfg=193 ctermbg=NONE cterm=bold guifg=#d7ffaf gui=bold
hi Pmenu ctermfg=16 ctermbg=219 cterm=NONE guibg=#ffafff guifg=#000000 gui=NONE
hi PmenuSbar ctermfg=17 ctermbg=219 cterm=NONE guibg=#ffafff guifg=#00005f gui=NONE
hi PmenuSel ctermfg=16 ctermbg=119 cterm=NONE guibg=#87ff5f guifg=#000000 gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=88 cterm=NONE guibg=#870000 gui=NONE
hi PreProc ctermfg=139 ctermbg=NONE cterm=NONE guifg=#af87af gui=NONE
hi Repeat ctermfg=71 ctermbg=NONE cterm=bold guifg=#5faf5f gui=bold
hi Search ctermfg=119 ctermbg=111 cterm=bold guibg=#87afff guifg=#87ff5f gui=bold
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guibg=#3a3a3a gui=NONE
hi Special ctermfg=138 ctermbg=NONE cterm=NONE guifg=#af8787 gui=NONE
hi SpecialComment ctermfg=210 ctermbg=NONE cterm=NONE guifg=#ff8787 gui=NONE
hi SpecialKey ctermfg=49 ctermbg=NONE cterm=NONE guifg=#00ffaf gui=NONE
hi SpellBad ctermfg=152 ctermbg=160 cterm=bold guibg=#d70000 guifg=#afd7d7 gui=bold
hi Statement ctermfg=138 ctermbg=NONE cterm=bold guifg=#af8787 gui=bold
hi StatusLine ctermfg=119 ctermbg=16 cterm=bold guibg=#000000 guifg=#87ff5f gui=bold
hi StatusLineNC ctermfg=102 ctermbg=16 cterm=none guifg=#000000 guibg=#878787
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff gui=NONE
hi String ctermfg=110 ctermbg=NONE cterm=NONE guifg=#87afd7 gui=NONE
hi Tag ctermfg=73 ctermbg=NONE cterm=NONE guifg=#5fafaf gui=NONE
hi Title ctermfg=196 ctermbg=NONE cterm=bold guifg=#ff0000 gui=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=bold guifg=#875f5f gui=bold
hi Type ctermfg=180 ctermbg=NONE cterm=NONE guifg=#d7af87 gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit ctermfg=233 ctermbg=233 cterm=NONE guibg=#121212 guifg=#121212 gui=NONE
hi Visual ctermfg=NONE ctermbg=16 cterm=NONE guibg=#000000 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guibg=#ff005f guifg=#ffffff gui=NONE


""""""""MAPPING""""""""

let mapleader = "\<space>"
noremap j gj
noremap k gk
nmap <F2> :set wrap!<cr>
nmap <silent> <F4> :Vex<cr>
nmap <F5> :!python3 %<cr>
nmap <F6> :so $VIMRUNTIME/syntax/hitest.vim<cr>
nmap <F7> :colorscheme pablo<cr>:set nocursorcolumn<cr>
nmap <F8> :so %<cr><leader><cr>
nmap <leader><F8> :so /etc/vim/vimrc<cr><leader><cr>
nmap <F9> :!python2.7 %<cr>
nmap <leader><F5> :!gcc % -o %.exe<cr><cr>:!./%.exe<cr>
nmap <leader><bs> :close<cr>
nmap <leader>e :edit <c-r>=expand("%:p:h")<cr>/
nmap <leader>fe :!chardet %<cr>
nmap <leader>n :set nornu!<cr>
nmap <leader>r :reg<cr>
nmap <leader>m :marks<cr>
nmap <leader>W :w!<cr>
nmap <leader>w :up<cr>
nmap <Tab> :find 

" Substitute current word/selection
nmap <F3> viwy:%s/\<<C-R>"\>//g<Left><Left>
vmap <F3> y:%s/<C-R>"//g<Left><Left>
vmap <leader><F3> :s/\%V//g<Left><Left><Left>
vmap <leader>/ "zy/<c-r>z<cr>

" Moving selected lines up & down
vmap <Down> :m'>+1<cr>gv
vmap <Up> :m'<-2<cr>gv

" Suround
vmap <silent> <leader>s" "sy:s@\%V\V<C-R>s@"<C-R>s"@<cr><Esc>:noh<cr>
vmap <silent> <leader>s' "sy:s@\%V\V<C-R>s@'<C-R>s'@<cr><Esc>:noh<cr>
vmap <silent> <leader>s( "sy:s@\%V\V<C-R>s@(<C-R>s)@<cr><Esc>:noh<cr>
vmap <silent> <leader>s) "sy:s@\%V\V<C-R>s@(<C-R>s)@<cr><Esc>:noh<cr>
vmap <silent> <leader>s[ "sy:s@\%V\V<C-R>s@[<C-R>s]@<cr><Esc>:noh<cr>
vmap <silent> <leader>s] "sy:s@\%V\V<C-R>s@[<C-R>s]@<cr><Esc>:noh<cr>
vmap <silent> <leader>s{ "sy:s@\%V\V<C-R>s@{<C-R>s}@<cr><Esc>:noh<cr>
vmap <silent> <leader>s} "sy:s@\%V\V<C-R>s@{<C-R>s}@<cr><Esc>:noh<cr>
nmap <silent> <leader>s" viw"sy:s/\%V<C-R>s/"<C-R>s"/<cr>:noh<cr>
nmap <silent> <leader>s' viw"sy:s/\%V<C-R>s/'<C-R>s'/<cr>:noh<cr>
nmap <silent> <leader>s( viw"sy:s/\%V<C-R>s/(<C-R>s)/<cr>:noh<cr>
nmap <silent> <leader>s) viw"sy:s/\%V<C-R>s/(<C-R>s)/<cr>:noh<cr>
nmap <silent> <leader>s[ viw"sy:s/\%V<C-R>s/[<C-R>s]/<cr>:noh<cr>
nmap <silent> <leader>s] viw"sy:s/\%V<C-R>s/[<C-R>s]/<cr>:noh<cr>
nmap <silent> <leader>s{ viw"sy:s/\%V<C-R>s/{<C-R>s}/<cr>:noh<cr>
nmap <silent> <leader>s} viw"sy:s/\%V<C-R>s/{<C-R>s}/<cr>:noh<cr>

" Disable highlight
nmap <silent> <leader><cr> :noh<cr>

" Windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" WinSize adjusting
nmap <C-Right> <C-W>>
nmap <C-Left> <C-W><
nmap <C-Up> <C-W>+
nmap <C-Down> <C-W>-

" Buffers
nmap <leader>b :buffers<cr>:buffer 
nmap <Bs> :up<cr>:Bclose<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>l :bnext<cr>

" Tabs
nmap <S-Right> gt
nmap <S-Left> gT
nmap <S-Up> :tabe %<cr>
nmap <S-Down> :tabclose<cr>

" Switch CWD to the directory of the current buffer
nmap <leader>cd :lcd %:p:h<cr>:pwd<cr>

" Toggle paste mode
nmap <leader>p :setlocal paste!<cr>

" Tags
nmap <leader>t :!start python C:\Python27\Tools\Scripts\ptags.py %<cr>:<c-f>itag 

" Terminal
tmap <C-j> <C-W>j
tmap <C-k> <C-W>k
tmap <C-h> <C-W>h
tmap <C-l> <C-W>l
nnoremap <C-t>c :term ++curwin<cr>
nnoremap <C-t>v <C-W>v<C-W>l:term ++curwin<cr>
nnoremap <C-t>s <C-W>s<C-W>j:term ++curwin ++rows=10<cr>
tnoremap <Esc> <C-W>N


""""""""FUNC""""""""

" Delete trailing white space on save
function! DTWS()
  %s/\s\+$//ge
endfunction
autocmd BufWrite *.py :call DTWS()

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return '[PASTE MODE] '
  endif
  return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")
 
  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif
 
  if bufnr("%") == l:currentBufNum
    new
  endif
 
  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction
