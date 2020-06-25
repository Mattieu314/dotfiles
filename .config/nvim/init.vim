"""""""""""""""""""""""""""""""""""""""""""""""""
" -------- Vim-plug for managing plugins --------
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/site/plugged')
" --- Interface and eye-candy ---
    Plug 'itchyny/lightline.vim'                " Light and configurable status bar
    Plug 'morhetz/gruvbox'                      " Colour scheme
    Plug 'scrooloose/nerdtree'                  " Sidebar file tree
    Plug 'junegunn/goyo.vim'                    " 'Focus mode' for writing
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    "Plug 'junegunn/limelight.vim'              "Dims surrounding paraghraphs
" --- Other helpful plugins ---
    "Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() }}     " Fuzzy Finder
    "Plug 'vimwiki/vimwiki'                     " Vim wiki
    "Plug 'terryma/vim-multiple-cursors'        " Sublime Text's multiple cursors
    "Plug 'tpope/vim-eunuch'                    " Easy shell commands 
    "Plug 'vifm/vifm.vim'                       " Terminal file manager inside vim
" --- General Coding Help ---
    Plug 'tpope/vim-commentary'                 " Easily comment out blocks of code 
    Plug 'SirVer/ultisnips'                     " Easy, fast snippets
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Conquerer of Completion
    Plug 'neomake/neomake'                      " Asyncrounous linting
    "Plug 'godlygeek/tabular'                   " Easy alignment of text
    "Plug 'tpope/vim-surround'                  " Change surrouding charcaters easily
" --- LaTeX writing ---
    Plug 'lervag/vimtex'                        " Advanced latex support
    Plug 'KeitaNakamura/tex-conceal.vim'        " Mask latex commands with result
    "Plug 'matze/vim-tex-fold'                  " Light-weight folding for TeX documents
" --- Python Programming ---
    "Plug 'vim-python/python-syntax'            " Enhanced Python Syntax higlighting
    "Plug 'tmhedberg/SimpylFold'               " Simple, correct folding for Python
    "Plug 'nvie/vim-flake8'                     " Runs python file through syntax and style checker
call plug#end()
    
"""""""""""""""""""""""""""""""""""""""""""""""""
" ------------ Plugin Configuration -------------
"""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree
"   autcomd vimenter * NERDTree             " Uncomment to autostart NERDTree
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowLineNumbers=1
    let NERDTreeShowHidden=1
" goyo.vim
    map <leader>g :Goyo \| set linebreak<CR>
" Vimtex
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_compiler_progname = '/home/matthew/.local/bin/nvr'     " Full path needed, otherwise not executable

" tex-conceal.vim
    set conceallevel=2
    let g:tex_conceal="abdgms"
" UltiSnips
    let g:UltiSnipsExpandTrigger = "<S-tab>"
    let g:UltiSnipsJumpForwardTrigger = "<c-j>"
    let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
    let g:UltiSnipsEditSplit = 'context'
" Neomake
    call neomake#configure#automake('nrwi',500)
    let g:neomake_open_list = 2
" Vifm
"   map <Leader>vv :Vifm<CR>
"   map <Leader>vs :VsplitVifm<CR>
"   map <Leader>sp :SplitVifm<CR>
"   map <Leader>dv :DiffVifm<CR>
"   map <Leader>tv :TabVifm<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" ------------ General Configuration ------------
"""""""""""""""""""""""""""""""""""""""""""""""""

" General NeoVim
    let mapleader=" " 		" Set leader
    set nocompatible 		" vIMproved
    set encoding=utf-8 			
    set clipboard=unnamedplus 	" Enable us of system clipboard
    "set spelllang=en_gb 		" Spellchecking
    set wildmode=longest,list,full 	" Enable command mode autocomplete
    set nobackup
    set nowb
    set noswapfile
    filetype plugin on
    syntax on

" Turn on persistent undo

" Lightline configuration and integration with coc.nvim
  let g:lightline = {
	\ 'colorscheme': 'powerline',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }

" -- Disable automatic commenting on new line
    autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



" ---- Vim Interface Look ----
    set number relativenumber 	" Numbers on side bar; relative to cursor position
    set noshowmode 			" Don't show mode below statusbar (lightline does it!)
    set cursorline 			" Enable line at cursor position
    set ruler 			" Always show current position
    set splitright splitbelow  		" Sensible and sane split options

" - Colours -
    let g:gruvbox_italic=1
    set termguicolors
    colorscheme gruvbox


" Move vertically by visual line
    noremap <silent> <expr> j (v:count ==0 ? 'gj' : 'j')
    noremap <silent> <expr> k (v:count ==0 ? 'gk' : 'k')


" -- Spaces and tabs --
    set tabstop=4 		" Number of visual spaces per tab
    set softtabstop=4 	" Number of spaces in tab when editing
    set expandtab 		" Tabs are spaces
    set smarttab 		" Tabs are smart
    set autoindent
    set shiftwidth=4

" -- Search --
    set incsearch 		" Search as characters are entered
    set hlsearch 		" Highlish search matches
    nmap cls :let @/ = ""<CR>     
    " ^ Clear search



" Install coc extensions
    let g:coc_global_extensions = [
        \ 'coc-vimtex',
        \ 'coc-prettier',
        \]

" Set up prettier (from README)
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Format on save -- see coc-settings.json





" ---- Coc.nvim configuration from README ----
" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  "Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
