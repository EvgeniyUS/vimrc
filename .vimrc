""""""""MAIN""""""""

filetype on
set nocompatible
set path+=**
set history=400
set autoread
set number
set relativenumber
set so=8
set wildmenu
set ruler
set showcmd
set hlsearch
set incsearch
set magic
set showmatch
set encoding=utf-8
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set wrap
set laststatus=2
set statusline=\ %{HasPaste()}%f%m%r%h%w\ [%{&fenc?&fenc:&enc}]\ %=\CWD:%{getcwd()}\ %l/%L\ %p%%\ 
set cursorcolumn
set cursorline
set hidden
set backspace=indent,eol,start
let netrw_bufsettings="noma nomod nowrap nonu nornu ro nobl"
let g:netrw_liststyle=1
let g:netrw_browse_split=4
"autocmd BufReadPost *.py :set omnifunc=python3complete#Complete
autocmd BufReadPost *.py :set omnifunc=pythoncomplete#Complete
"autocmd CompleteDone * pclose

" Ctags
command! MakeTags !ctags -R .

" No sound on errors
set noerrorbells
set visualbell
set t_vb=

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile


""""""""STYLE""""""""

hi clear
syntax reset
if &t_Co > 1
  syntax enable
endif
set t_Co=256
hi Normal ctermfg=250 ctermbg=234 cterm=bold
hi Boolean ctermfg=13 ctermbg=NONE cterm=NONE
hi Character ctermfg=8 ctermbg=NONE cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=93 ctermbg=NONE cterm=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=233 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE
hi CursorLineNr ctermfg=black ctermbg=darkgrey cterm=NONE
hi Define ctermfg=68 ctermbg=NONE cterm=NONE
hi Directory ctermfg=31 ctermbg=NONE cterm=bold
hi EndOfBuffer ctermfg=250 ctermbg=234 cterm=NONE
hi ErrorMsg ctermfg=darkred ctermbg=NONE cterm=bold
hi Exception ctermfg=179 ctermbg=NONE cterm=bold
hi Float ctermfg=181 ctermbg=NONE cterm=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE
hi Function ctermfg=119 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=darkgrey ctermbg=NONE cterm=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE
hi LineNr ctermfg=darkgrey ctermbg=black cterm=NONE
hi MatchParen ctermfg=green ctermbg=blue cterm=bold
hi ModeMsg ctermfg=darkblue ctermbg=green cterm=bold
hi NonText ctermfg=darkgrey ctermbg=NONE cterm=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE
hi Operator ctermfg=127 ctermbg=NONE cterm=NONE
hi Pmenu ctermfg=black ctermbg=219 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=219 cterm=NONE
hi PmenuSel ctermfg=black ctermbg=green cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=darkred cterm=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE
hi Repeat ctermfg=131 ctermbg=NONE cterm=NONE
hi Search ctermfg=green ctermbg=blue cterm=bold
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi Special ctermfg=yellow ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=210 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=49 ctermbg=NONE cterm=NONE
hi SpellBad ctermfg=white ctermbg=red cterm=bold
hi Statement ctermfg=6 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=green ctermbg=black cterm=bold
hi StatusLineNC ctermfg=darkgrey ctermbg=black cterm=none
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE
hi String ctermfg=110 ctermbg=NONE cterm=NONE
hi TabLine cterm=NONE
hi Tag ctermfg=73 ctermbg=NONE cterm=NONE
hi Title ctermfg=203 ctermbg=NONE cterm=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=bold
hi Type ctermfg=205 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit ctermfg=233 ctermbg=233 cterm=NONE
hi Visual ctermfg=NONE ctermbg=black cterm=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE
hi htmlEndTag ctermfg=148 ctermbg=NONE cterm=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE
hi htmlTag ctermfg=149 ctermbg=NONE cterm=NONE
hi htmlTagName ctermfg=8 ctermbg=NONE cterm=bold
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE
hi javaScriptFunction ctermfg=71 ctermbg=NONE cterm=NONE
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE


""""""""MAPPING""""""""

let mapleader = "\<space>"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nmap <F2> :set wrap!<cr>
map <F4> :Vex<cr>:vertical resize 35<cr>
map <F5> :!python3 %<cr>
map <F9> :!python %<cr>
map <leader>fe :!chardet %<cr>
map <leader><F5> :!gcc % -o %.exe<cr><cr>:!./%.exe<cr>
"map <F8> :so /etc/vim/vimrc<cr><leader><cr>
map <F8> :so /root/.vimrc<cr><leader><cr>
map <F7> :colorscheme pablo<cr>
map <F6> :so $VIMRUNTIME/syntax/hitest.vim<cr>
map <leader>cc :close<cr>
nmap <leader>w :w!<cr>
nmap <Tab> :<c-f>ifind 
map <leader>e :edit <c-r>=expand("%:p:h")<cr>/

" Substitute current word/selection
vnoremap <leader><F3> :s/\%V//g<Left><Left><Left>
vnoremap <F3> y:%s/<C-R>"//g<Left><Left>
nnoremap <F3> viwy:%s/<C-R>"//g<Left><Left>

" Disable highlight
map <silent> <leader><cr> :noh<cr>

" Windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Buffers
map <leader>bb :buffers<cr>:buffer 
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>bc :Bclose<cr>
map <leader>ba :bufdo bd<cr>

" Tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>ts :tabnext<cr>
map <leader>ta :tab ball<cr>

" Switch CWD to the directory of the current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Toggle spell checking
map <leader>ss :setlocal spell!<cr>

" Toggle paste mode
map <leader>pp :setlocal paste!<cr>


""""""""FUNC""""""""

" Delete trailing white space on save
function! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction
autocmd BufWrite *.py :call DeleteTrailingWS()

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
