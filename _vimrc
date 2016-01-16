source $VIMRUNTIME/mswin.vim
behave mswin

set sw=4		"size of an indent
set sts=4		"a combination of spaces and tabs
set smartindent
set cindent		"C style index
set hlsearch		" Highlight search results
syntax enable
set nocompatible               " be iMproved
filetype off                   " required!
"set csprg=C:\Windows\System32\cscope.exe 
set csprg=cswrapper.exe 
set csto=0 
set cst 
set nocsverb 
if filereadable("./cscope.out")       
    cs add cscope.out                 
endif                                  
set csverb

filetype off
if has("gui_running")
set guifont=Consolas:h10:b:cDEFAULT
au GUIEnter * winsize 80 40
endif

colorscheme wombat
 
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#rc('$USERPROFILE/.vim/bundle')
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
"
" My Plugin list
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'SrcExpl'
Plugin 'majutsushi/tagbar'
Plugin 'AutoComplPop'
"===config airline===
let g:airline#extensions#tabline#enabled = 1
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
"===key mapping==
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>
nmap <F8> :SrcExplToggle<CR>
imap <C-k> <Up>
imap <C-j> <Down>
"===Taglist configuration===
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 50
"===SourceExplorer Configuration===
let g:SrcExpl_winHeight = 8
let g:SrcExpl_jumpKey = "<ENTER>" 
let g:SrcExpl_gobackKey = "<SPACE>" 
let g:SrcExpl_isUpdateTags = 0 
let g:SrcExpl_pluginList = [ 
         \ "__Tag_List__", 
         \ "_NERD_tree_" 
     \ ]
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " required!

