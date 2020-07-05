"""""""""""""""""""""""""""""""""""""""""""""""""
" ------- Plugin-specific configuration ------- "

" NERDTree
"   autcomd vimenter * NERDTree             " Uncomment to autostart NERDTree
    let NERDTreeShowLineNumbers=1
    let NERDTreeShowHidden=1
    let g:NERDTreeWinSize=38
    " Exit vim if NERDTree only window
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Vimtex
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_compiler_progname = '/home/matthew/.local/bin/nvr'     " Full path needed, otherwise not executable

" tex-conceal.vim
    set conceallevel=2
    let g:tex_conceal="abdgms"

" UltiSnips
    let g:UltiSnipsExpandTrigger = "<S-tab>"
    let g:UltiSnipsJumpForwardTrigger = "<c-f>"
    let g:UltiSnipsJumpBackwardTrigger = "<c-b"
    let g:UltiSnipsEditSplit = 'context'

" Neomake
    call neomake#configure#automake('nrwi',500)
    let g:neomake_open_list = 2


" AutoPairs
    autocmd Filetype tex,vim let b:AutoPairs = {}

" Markdown-preview
    let g:mkdp_auto_close = 1   " Close preview after leaving md buffer
    let g:mkdp_browser = 'firefox'

" vim-tmux-navigator
    let g:tmux_navigator_save_on_switch=2       " Write all buffers before switch

