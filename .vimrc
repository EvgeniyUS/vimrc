""""""""MAIN""""""""

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
set nocompatible
set path+=**
set history=500
set autoread
set nu
set so=8
set wildmenu
set ruler
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch 
set magic
set showmatch 
set encoding=utf-8
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set laststatus=2
set statusline=\ %{HasPaste()}%f%m%r%h%w\ %=\CWD:%{getcwd()}\ %l/%L\ %p%%\ 
set cursorline
set hidden

" Ctags
command! MakeTags !ctags -R .

" No annoying sound on errors
set noerrorbells
set novisualbell
set vb t_vb=

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile

" Linebreak on 500 characters
set lbr
set tw=500


""""""""STYLE""""""""

set background=dark
hi clear
syntax reset
set t_Co=256
hi TabLine cterm=NONE
hi ModeMsg ctermfg=darkblue ctermbg=green cterm=bold
hi EndOfBuffer ctermfg=250 ctermbg=234 cterm=NONE
hi LineNr ctermfg=darkgrey ctermbg=black cterm=NONE
hi CursorLineNr ctermfg=black ctermbg=darkgrey cterm=NONE
hi StatusLine ctermfg=green ctermbg=black cterm=bold
hi StatusLineNC ctermfg=darkgrey ctermbg=black cterm=none
hi Search ctermfg=green ctermbg=blue cterm=bold
hi MatchParen ctermfg=green ctermbg=blue cterm=bold
hi Visual ctermfg=NONE ctermbg=black cterm=bold
hi Normal ctermfg=250 ctermbg=234 cterm=NONE
hi Statement ctermfg=6 ctermbg=NONE cterm=NONE
hi String ctermfg=101 ctermbg=NONE cterm=NONE
hi Function ctermfg=148 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=9 ctermbg=NONE cterm=NONE
hi Pmenu ctermfg=black ctermbg=219 cterm=NONE
hi PmenuSel ctermfg=black ctermbg=green cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=219 cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=darkred cterm=NONE
hi Cursor ctermfg=235 ctermbg=231 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi VertSplit ctermfg=black ctermbg=234 cterm=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE
hi Directory ctermfg=24 ctermbg=NONE cterm=bold
hi Exception ctermfg=179 ctermbg=NONE cterm=bold
hi Folded ctermfg=242 ctermbg=235 cterm=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE
hi Character ctermfg=8 ctermbg=NONE cterm=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=94 ctermbg=NONE cterm=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=italic
hi Repeat ctermfg=131 ctermbg=NONE cterm=italic
hi ErrorMsg ctermfg=darkred ctermbg=NONE cterm=bold
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE
hi Operator ctermfg=127 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=242 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=49 ctermbg=NONE cterm=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE
hi Tag ctermfg=194 ctermbg=NONE cterm=NONE
hi Title ctermfg=203 ctermbg=NONE cterm=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold
hi Type ctermfg=205 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi htmlTag ctermfg=148 ctermbg=NONE cterm=NONE
hi htmlEndTag ctermfg=148 ctermbg=NONE cterm=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE


""""""""MAPPING""""""""

let mapleader = "\<space>"
nnoremap j gj
nnoremap k gk
map <F4> :Ex<cr>
map <leader><F4> :Vex<cr>
map <F5> :!python3 %<cr>
map <leader><leader> :close<cr>
nmap <leader>w :w!<cr>
map 0 ^
nmap <Tab> :find 
nnoremap <F2> :set relativenumber!<CR>
nnoremap <leader><F2> :set number!<CR>
map <F8> :so ~/.vimrc<cr><leader><cr>

" Visual mode pressing <F3> searches and replace the current selection
vnoremap <F3> y:%s/<C-R>"//g<left><left>
nnoremap <F3> bvey:%s/<C-R>"//g<left><left>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Toggle paste mode on and off
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
