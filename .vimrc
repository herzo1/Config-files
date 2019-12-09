" VUNDLE:
set nocompatible
filetype off

" set runtime path to include vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle mana vundle
Plugin 'VundleVim/Vundle.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" NERD tree
Plugin 'scrooloose/nerdtree'

" Vim airline
Plugin 'vim-airline/vim-airline'

" Vim airline themes
Plugin 'vim-airline/vim-airline-themes' 

" Highlighting for c/c++
Plugin 'octol/vim-cpp-enhanced-highlight'

" Colorscheme
Plugin 'nanotech/jellybeans.vim'

" All of the plugins must be added before this line
call vundle#end()
filetype plugin indent on

" ----------------------------------------------------
" COLORSCHEMES
colorscheme jellybeans

" Colorscheme Airline
let g:airline_theme='deus'

" -----------------------------------------------------
" BASIC SETUP: 

" show linenumber
set number

" enable syntax
syntax on

" highlight searches
set hlsearch

" Displeay the cursor position on the last line of the screen
set ruler

" use visual bell instead of beeping sound
set visualbell

" highlight matching brackets
set showmatch

" intelligent comments (for c)
set comments=sl:/*,mb:\ *,elx:\ */

" -------------------------------
" FINDING FILES:

" search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - hit ab to :find by parial match
" - use * to make it fuzzy

" -------------------------------
" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits on the right
let g:netrw_listsyles=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" --------------------------------
" SNIPPETS:

" TODO:
" Read an empty c template and move cursor into main void
nnoremap ,cm :-1read ~/Templates/c-dev/main-sandbox.c<CR>7j>i

