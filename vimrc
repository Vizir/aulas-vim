" vimrc sugerido - colocar em .vim/vimrc
" Instalar o NeoBundle antes, seguindo os passos abaixo
" A primeira vez que executar o vim depois de instalar o neobundle e
" colocar o vimrc no local correto o NeoBundle confirmará a instalação
" dos plugins.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Instalação do NeoBundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $ mkdir -p ~/.vim/bundle
" $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
let mapleader = ","

" NeoBundle (plugin manager) config
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""
" Plugins list
""""""""""""""
NeoBundle 'tpope/vim-surround'            "  Ease surrounding
NeoBundle 'honza/vim-snippets'            "  The best snippet engine you'll ever need
NeoBundle 'sirver/ultisnips'
NeoBundle 'tomtom/tcomment_vim'           "  Comment like a boss
NeoBundle 'raimondi/delimitmate'          "  If you miss IDE features like character closing
NeoBundle 'tpope/vim-endwise'             "  If you miss IDE features like block closing
NeoBundle 'kien/ctrlp.vim'                "  Fuzzyfinder, yes vim has and has more than one
NeoBundle 'scrooloose/nerdtree'           "  A file explorer
NeoBundle 'othree/html5.vim'              "  Improves vim html5 syntax and indentation
NeoBundle 'tpope/vim-rails'               "  If you use these plugins correctly you'll never
NeoBundle 'vim-ruby/vim-ruby'             "  look for an IDE again
NeoBundle 'drslump/vim-syntax-js'         "  Improves vim js syntax and indentation
NeoBundle 'vim-scripts/JavaScript-Indent'
NeoBundle 'gundo'                         "  Gundo - Undo, in small pieces

call neobundle#end()
filetype plugin indent on " required
NeoBundleCheck            " Check if any bundle is not installed on startup
syntax on                 " Enable syntax recognition

"""""""""""""
" Vim options
"""""""""""""
set number          " Show line numbers
set ignorecase      " Ignore case while searching
set smartcase       " If you search with all lower case letters the search will be case insensitive.
set infercase       " If you type any upper case letter the search will be case sensitive
set hlsearch        " Highlight search term
set incsearch       " Go to the matching pattern while you type
set smartindent     " Indent really smartly
set tabstop=2       " Configure tabs to two spaces
set softtabstop=2   " Configure tabs to two spaces
set shiftwidth=2    " Configure tabs to two spaces
set shiftround      " Configure tabs to two spaces
set expandtab       " Insert white spaces when you press tab
set wildmenu        " zsh like menu
set wildmode=full   " zsh like menu
set wrap            " Break lines wider than the window width
set nrformats=alpha " Increases/Decreases numbers with Ctrl-a/Ctrl-x correctrly
                    " Help from: http://www.slackorama.com/projects/vim/vimrc.html
set showcmd         " Show what command is being typed at the right corner
set ruler           " Show the cursor position all the time
set enc=utf-8       " UTF-8 encoding, by default

"""""""""""""
" Colorscheme
"""""""""""""
set background=dark
colorscheme desert

set modeline " Load modelines when file opens, i.e.: # vim: set ts=2 :
             " http://vim.wikia.com/wiki/Modeline_magic

augroup BeforeExit
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e "Automatically removes all trailing whitespace
augroup end

runtime macros/matchit.vim " match the opening/closing html tag when pressing '%'

" Open NERDTRee while starting vim and close it when it is the last window
augroup NERDTreeCustomCommands
  autocmd!
  autocmd VimEnter * NERDTree
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup end

""""""""""""""""
" Custom keymaps
""""""""""""""""
" Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Ctrl-t opens the TaskList inside a file
map <C-t> <Plug>TaskList

" Ctrl-g opens Gundo
map <C-g> :GundoToggle<CR>

" Map jk to always advance a screen line
nnoremap j gj
nnoremap k gk

" ,c toggles comment (Tcomment)
nmap <silent> <leader>c :TComment<CR>
vmap <silent> <leader>c :TComment<CR>

" Ctrl J/K add blank lines above and below
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>""

""""""""""""""""""""
" Custom status line
""""""""""""""""""""
set laststatus=2                                " Always show the status line
set statusline=%-40F                            " Full filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}]                         " file format
set statusline+=%h                              " help file flag
set statusline+=%m                              " modified flag
set statusline+=%r                              " read only flag
set statusline+=%y                              " filetype
set statusline+=%=                              " left/right separator
set statusline+=%c,                             " cursor column
set statusline+=%l/%L                           " cursor line/total lines
set statusline+=\ %P                            " percent through file

""""""""""""""""""""""""
" Loading specific files
""""""""""""""""""""""""
au BufRead,BufNewFile *.md set filetype=markdown
au FileType markdown setlocal ts=4 sts=4 sw=4

""""""""
" Dica "
""""""""
" Como ver quais são as teclas mapeadas no vim:
" :nmap for normal mode mappings
" :vmap for visual mode mappings
" :imap for insert mode mappings
" :mkexrc Write current key mappings and changed options to [file]
