"-----------------------------------------------------------------------------
" load .exrc configuration
"-----------------------------------------------------------------------------
so ~/.exrc

"-----------------------------------------------------------------------------
" vundle
"-----------------------------------------------------------------------------
set nocompatible        " use vim as vim, should be put at the very start
filetype off                  " required

" install Vundle
" mkdir -p ~/.vim/bundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" This library provides some utility functions. There isn't much need to
" install it unless another plugin requires you to do so.
Plugin 'tomtom/tlib_vim'

" A code-complation engine which support many languages
" Ensure that Vim is at least 7.3.584 and that it has support for python2 scripting
"Plugin 'Valloric/YouCompleteMe'

" It provides keyword completion system by maintaining a cache of keywords in
" the current buffer.
" requires Vim 7.3.885+ with Lua enabled
"Plugin 'Shougo/neocomplete.vim'

" contains neocomplete snippets source
"Plugin 'Shougo/neosnippet.vim'

" autocomplete
Plugin 'vim-scripts/AutoComplPop'

" python autocomplete
" require vim compiled with python2 or python3
"Plugin 'davidhalter/jedi-vim'

" SnipMate aims to provide support for textual snippets, similar to TextMate or
" other Vim plugins like UltiSnips. For example, in C, typing for<tab> could be
" expanded to
"    for (i = 0; i < count; i++) {
"       /* code */
"    }
"Plugin 'garbas/vim-snipmate'

" This repository contains snippets files for various programming languages.
"Plugin 'honza/vim-snippets'

" features likes vim-snipmate. It needs python. Its fast and has the most features
"Plugin 'SirVer/ultisnips'

" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
"Plugin 'vim-scripts/taglist.vim'
Plugin 'yegappan/taglist'

Plugin 'vim-scripts/Conque-GDB'
Plugin 'cpiger/NeoDebug'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'nvie/vim-nox'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'liuchengxu/vista.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'tpope/vim-vinegar'

" various utils such as caching interpreted contents of files or advanced glob
" like things
Plugin 'MarcWeber/vim-addon-mw-utils'

" A filesystem tree explorer plugin for vim
Plugin 'preservim/nerdtree'

" plugin for intensely orgasmic commenting
Plugin 'preservim/nerdcommenter'

" NERDTree and tabs together in Vim, painlessly
Plugin 'jistr/vim-nerdtree-tabs'

" BufExplorer Plugin for Vim
Plugin 'jlanzarotta/bufexplorer'

" super simple vim plugin to show the list of buffers in the command bar
Plugin 'bling/vim-bufferline'

" Lean & mean status/tabline for vim that's light as air
" integrates with variety of plugins
" Supports 7.2 as the minimum Vim version
"Plugin 'bling/vim-airline'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plugin 'ctrlpvim/ctrlp.vim'

" syntax checker for all kinds of programming languages
Plugin 'vim-syntastic/syntastic'

" Vim/Ruby Configuration Files
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Vim for rust-lang
Plugin 'rust-lang/rust.vim'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'
" Json
Plugin 'elzr/vim-json'

" Nodejs
Plugin 'moll/vim-node'

" Vue.js
Plugin 'posva/vim-vue'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" plugin to format git comment messages
Plugin 'tpope/vim-git'

" powershell
Plugin 'PProvost/vim-ps1'

" toml
Plugin 'cespare/vim-toml'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"-----------------------------------------------------------------------------
" general
"-----------------------------------------------------------------------------
set history=100         " lines of Ex-mode commands, search history
set browsedir=buffer    " use directory of the related buffer for file browser
set clipboard+=unnamed  " use clipboard register '*' for all y, d, c, p ops
set viminfo+=!          " make sure it can save viminfo
set isk+=$,%,#,-,@,_    " none of these should be word dividers
set confirm             " raise a dialog confirm whether save changed buffer
set ffs=unix,dos,mac    " favor unix, which behaves good under Linux/Windows
set fenc=utf-8          " default fileencoding
set fencs=utf-8,ucs-bom,euc-jp,gb18030,gbk,gb2312,cp936
map Q gq
                        " do not use Ex-mode, use Q for formatting
filetype on             " enable file type detection
set wildignore=*.swp,*.bak,*.pyc,*.class    " Ignore some file

"-----------------------------------------------------------------------------
" colors
"-----------------------------------------------------------------------------
"colorscheme evening
colorscheme darkblue
set background=dark     " use a dark background
"set background=darkblue     " use a dark background
syntax on               " syntax highlighting

"-----------------------------------------------------------------------------
" gui-only settings
"-----------------------------------------------------------------------------
if has("gui_running")
"  colo inkpot           " colorscheme, inkpot.vim
  set lines=35          " window tall and wide, only if gui_running,
  set columns=87       " or vim under console behaves badly
endif

"-----------------------------------------------------------------------------
" Vim UI
"-----------------------------------------------------------------------------
set linespace=1         " space it out a little more (easier to read)
set wildmenu            " type :h and press <Tab> to look what happens
set cmdheight=2         " use 2 screen lines for command-line
set lazyredraw          " do not redraw while executing macros (much faster)
"set number              " don't print line number
set hid                 " allow to change buffer without saving
set ruler               "Always show current position
set backspace=2         " make backspace work normal
"set whichwrap+=<,>,h,l  " allow backspace and cursor keys to wrap
"set mouse=a             " use mouse in all modes
set shortmess=atI       " shorten messages to avoid 'press a key' prompt
set report=0            " tell us when anything is changed via :...
set fillchars=vert:\ ,stl:\ ,stlnc:\
                        " make the splitters between windows be blank

"-----------------------------------------------------------------------------
" visual cues
"-----------------------------------------------------------------------------
set showmatch           " show matching paren
set matchtime=5         " 1/10 second to show the matching paren
set hlsearch            " do not highlight searched for phrases
set incsearch           " BUT do highlight where the typed pattern matches
set scrolloff=3         " minimal number of screen lines to keep above/below the cursor
set novisualbell        " use visual bell instead of beeping
set noerrorbells        " do not make noise
set laststatus=2        " always show the status line
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set statusline=%<%n\ %f\ %h%m%r%=%-14.(%l,%c%V%)\ %y[%{&ff},%{strlen(&fenc)?&fenc:'none'}%{(&bomb?\",BOM\":\"\")}:%b,%B]\ %P
set statusline=%<%f\ %h%m%r%=%-14.(%l/%L,%c%V%)\ %y[%{&ff},%{strlen(&fenc)?&fenc:'none'}%{(&bomb?\",BOM\":\"\")}:%b,%B]\ %P
"set statusline=%{VimBuddy()}\ %F%m%r%h%w\ [%{&ff}]\ [%Y]\ [\%03.3b\ \%02.2B]\ [%02v\ %03l\ %L\ %p%%]
                        " need vimbuddy.vim, dislike it? just remove it

"-----------------------------------------------------------------------------
" text formatting/layout
"-----------------------------------------------------------------------------
set ai                  " autoindent
set si                  " smartindent
"set wrap                " do not wrap lines
"set cindent             " do C-style indenting
"set smarttab            " use tabs at the start of a line, spaces elsewhere
"set fo=tcrqn            " see help (complex)
set tabstop=4           " tab spacing
set softtabstop=4       " unify it
set shiftwidth=4        " unify it
"set noexpandtab         " real tabs please!
set expandtab           " expand tabs!
set formatoptions+=mM   " thus vim can reformat multibyte text (e.g. Chinese)
set textwidth=80

"-----------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-----------------------------------------------------------------------------
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g`\"" |
\ endif

"-----------------------------------------------------------------------------
" folding
"-----------------------------------------------------------------------------
"set foldenable          " turn on folding
"set foldmethod=indent   " make folding indent sensitive
"set foldlevel=100       " don't autofold anything, but can still fold manually
"set foldopen -=search   " don't open folds when you search into them
"set foldopen -=undo     " don't open folds when you undo stuff
" Folding
" auto save folding : http://princ3.wordpress.com/2007/01/26/automaticaly-save-foldings-in-vim/
set viewoptions=folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
autocmd Syntax c,cpp,vim,xml,html,xhtml,js,json,php,py,python,rb,ruby,erb,eruby set foldmethod=manual
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

"-----------------------------------------------------------------------------
" keymaps
"-----------------------------------------------------------------------------
" map <C-Right> and <C-Left> in term
" http://vim.1045645.n5.nabble.com/How-to-map-CTRL-Right-Arrow-td4838722.html
if &term == 'xterm'
    set <C-Right>=
    set <C-Left>=
endif
if &term == 'screen'
"    set <C-Right>=
"    set <C-Left>=
    set <C-Right>=
    set <C-Left>=
endif

"  press Ctrl-Left or Ctrl-Right to go to the previous or next tabs, and can
"  press Alt-Left or Alt-Right to move the current tab to the left or right.
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
"nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
" press F8 to show all buffers in tabs, or to close all tabs (toggle: it
" alternately executes :tab ball and :tabo)
"let notabs = 0
"nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

"Useful when moving accross long lines
nnoremap j gj
nnoremap k gk

"The <Leader> key is mapped to \ by default. So if you have a map of <Leader>t, you can execute it by default with \t
nnoremap <silent> <leader><cr> :nohlsearch<cr>
" GRB: clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>/<BS>

" select buffer to edit
nnoremap <leader>b :ls<CR>:buffer<Space>
" Close the current buffer
nnoremap <leader>bd :bdelete<cr>
" Close all the buffers
nnoremap <leader>ba :1,300 bdelete!<cr>
" Moving buffer using CTRL+ the arrows
nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>

" Tab configuration
nnoremap <leader>tn :tabnew! %<cr>
nnoremap <leader>te :tabedit
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove

" When pressing <leader>cd switch to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>

"-----------------------------------------------------------------------------
" autocmd
"-----------------------------------------------------------------------------
"--- python formatting help ---
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" Enable omni completion.
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType json set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0
" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml set sw=2
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set sts=2
autocmd FileType xhtml set textwidth=0
" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
" json
autocmd FileType json set sw=2
autocmd FileType json set ts=2
autocmd FileType json set sts=2
" Ruby
autocmd FileType ruby set sw=2
autocmd FileType ruby set ts=2
autocmd FileType ruby set sts=2
" Eruby
autocmd FileType eruby set sw=2
autocmd FileType eruby set ts=2
autocmd FileType eruby set sts=2

"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.cc :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.hpp :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.pm :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.erb :%s/\s\+$//e

" tabs, not spaces for php, ctp
au BufEnter,BufRead *.php,*.ctp,Makefile* set noexpandtab

" reload .vimrc when it is changed
autocmd BufWritePost .vimrc source %

"-----------------------------------------------------------------------------
" other settings
"-----------------------------------------------------------------------------
"set guifont=Monospace\ 13
set guifont=Liberation_Mono:h12:cANSI

"set for Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

"https://clang.llvm.org/docs/ClangFormat.html
"map <C-K> :pyf d:/dev/llvm-project-13.0.0.src/clang/tools/clang-format/clang-format.py<cr>
"imap <C-K> <c-o>:pyf d:/dev/llvm-project-13.0.0.src/clang/tools/clang-format/clang-format.py<<cr>
