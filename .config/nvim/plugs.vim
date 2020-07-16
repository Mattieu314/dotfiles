"""""""""""""""""""""""""""""""""""""""""""""""""
" -------- Vim-plug for managing plugins --------
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/site/plugged')
" --- Interface and eye-candy ---
    Plug 'itchyny/lightline.vim'                " Light and configurable status bar
    Plug 'morhetz/gruvbox'                      " Colour scheme
    Plug 'connorholyday/vim-snazzy'
    Plug 'scrooloose/nerdtree'                  " Sidebar file tree
    Plug 'junegunn/goyo.vim'                    " 'Focus mode' for writing
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    Plug 'altercation/vim-colors-solarized'
    "Plug 'junegunn/limelight.vim'              "Dims surrounding paraghraphs
" --- Other helpful plugins ---
    Plug 'jiangmiao/auto-pairs'
    "Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() }}     " Fuzzy Finder
    "Plug 'vimwiki/vimwiki'                     " Vim wiki
    "Plug 'terryma/vim-multiple-cursors'        " Sublime Text's multiple cursors
    "Plug 'tpope/vim-eunuch'                    " Easy shell commands 
    Plug 'vifm/vifm.vim'                       " Terminal file manager inside vim
" --- General Coding Help ---
    Plug 'tpope/vim-commentary'                 " Easily comment out blocks of code 
    Plug 'SirVer/ultisnips'                     " Easy, fast snippets
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Conquerer of Completion
    Plug 'neomake/neomake'                      " Asyncrounous linting
    "Plug 'godlygeek/tabular'                   " Easy alignment of text
    Plug 'tpope/vim-surround'                  " Change surrouding charcaters easily
" --- LaTeX writing ---
    Plug 'lervag/vimtex'                        " Advanced latex support
    Plug 'KeitaNakamura/tex-conceal.vim'        " Mask latex commands with result
    "Plug 'matze/vim-tex-fold'                  " Light-weight folding for TeX documents
" --- Python Programming ---
    Plug 'vim-python/python-syntax'            " Enhanced Python Syntax higlighting
    "Plug 'tmhedberg/SimpylFold'               " Simple, correct folding for Python
    Plug 'nvie/vim-flake8'                     " Runs python file through syntax and style checker

" --- Markdown ---
    Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
" --- Tmux Integration ---
    Plug 'christoomey/vim-tmux-navigator'
" --- C++ ---
    Plug 'bfrg/vim-cpp-modern'
" --- Debugger ---
    Plug 'puremourning/vimspector'
call plug#end()

let g:vimspector_enable_mappings = 'HUMAN'
