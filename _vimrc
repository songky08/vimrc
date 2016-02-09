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
Plugin 'scrooloose/syntastic'

"===key mapping==
nmap <F5> :reg<CR>
nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>
nmap <F8> :SrcExplToggle<CR>
imap <C-k> <Up>
imap <C-j> <Down>
nmap 0p "0p
nmap 1p "1p
nmap 2p "2p
"===config airline===
let g:airline#extensions#tabline#enabled = 1
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
"===tagbar configuration===
let g:tagbar_sort = 0
"===SourceExplorer Configuration===
let g:SrcExpl_winHeight = 8
let g:SrcExpl_jumpKey = "<ENTER>" 
let g:SrcExpl_gobackKey = "<SPACE>" 
let g:SrcExpl_isUpdateTags = 0 
let g:SrcExpl_pluginList = [ 
         \ "__Tag_List__", 
         \ "_NERD_tree_" 
     \ ]
"===syntastic configuration begin===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_loc_list_height = 4
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " required!

