" Vimrc sugerido - colocar em .vim/vimrc
" Instalar o NeoBundle antes, seguindo os passos abaixo
" A primeira vez que executar o vim depois de instalar o neobundle e
" color o vimrc no local correto o NeoBundle confirmará a instalação
" dos plugins
" -- Instalação do NeoBundle
" $ mkdir -p ~/.vim/bundle
" $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
set nocompatible
filetype off
let mapleader = ","

" NeoBundle (plugin manager) config
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Ease surrounding
NeoBundle 'tpope/vim-surround'
" The best snippet engine you'll ever need
NeoBundle 'honza/vim-snippets'
NeoBundle 'sirver/ultisnips'
" Comment like a boss
NeoBundle 'tomtom/tcomment_vim'
" If you miss IDE features like character closing
NeoBundle 'raimondi/delimitmate'
" If you miss IDE features like block closing
NeoBundle 'tpope/vim-endwise'
" Fuzzyfinder, yes vim has and has more than one
NeoBundle 'kien/ctrlp.vim'
" A file explorer
NeoBundle 'scrooloose/nerdtree'
" Improves vim html5 syntax and indentation
NeoBundle 'othree/html5.vim'
" If you use these plugins correctly you'll never
" look for an IDE again
NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-ruby/vim-ruby'
" Improves vim js syntax and indentation
NeoBundle 'drslump/vim-syntax-js'
NeoBundle 'vim-scripts/JavaScript-Indent'

call neobundle#end()
filetype plugin indent on    " required
NeoBundleCheck " Check if any bundle is not installed on startup
syntax on " Enable syntax recognition

" Vim options
set number " Show line numbers
set ignorecase " Ignore case while searching
set smartcase " If you search with a lower case text the search will be case insensitive.
set infercase " If you type any upper case char the search will be case sensitive
set hlsearch " Highlight search term
set incsearch " Highlight the search while you type
set smartindent " Indent really smartly
set tabstop=2 " Configure tabs to two spaces
set softtabstop=2 " Configure tabs to two spaces
set shiftwidth=2 " Configure tabs to two spaces
set shiftround " Configure tabs to two spaces
set expandtab " Insert white spaces when you press tab
set wildmenu " zsh like menu
set wildmode=full " zsh like menu
set wrap " Break lines wider than the window width
set nrformats=alpha "Help from: http://www.slackorama.com/projects/vim/vimrc.html
set showcmd "Show what command is being typed at the right corner
set enc=utf-8

augroup BeforeExit
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e "Automatically removes all trailing whitespace
augroup end

runtime macros/matchit.vim " match the opening/closing html tag when pressing '%'

"Nerd tree
" Open NERDTRee while starting vim
" and close it when it is the last window
augroup NERDTreeCustomCommands
  autocmd!
  autocmd VimEnter * NERDTree
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup end

" Custom keymaps
" Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Map hjkl to always advance a screen line
nnoremap h gh
nnoremap j gj
nnoremap k gk
nnoremap l gl
" Tcomment
" Comment Line
" ,c for toggle comment
nmap <silent> <leader>c :TComment<CR>
vmap <silent> <leader>c :TComment<CR>

" Custom status line
set laststatus=2 " Always show the status line
set statusline=%-40F "Full filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=%y "filetype
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
