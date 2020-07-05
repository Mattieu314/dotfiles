"""""""""""""""""""""""""""""""""""""""""""""""""
" ----------- Mappings (inc. plugins) ----------"
"""""""""""""""""""""""""""""""""""""""""""""""""
" ----- Set leader key to space -----
    let mapleader=" "

" ----- Plugin shotcuts -----
" Goyo
    noremap <leader>ag :Goyo \| set linebreak<CR>

" coc.nvim --- (<leader>c)       (adapted from coc README)
    " Rename symbol
    nmap <leader>cr <Plug>(coc-rename)
    " Format selected code
    xmap <leader>cf <Plug>(coc-format-selected)
    nmap <leader>cf <Plug>(coc-format-selected)
    " Apply codeAction to selected region
    xmap <leader>ca <Plug>(coc-codeaction-selected)
    nmap <leader>ca <Plug>(coc-codeaction-selected)
    " Remap keys for applting codeAction to current buffer
    nmap <leader>cb <Plug>(coc-codeaction)
    " Apply AutoFix to problem on current line
    nmap <leader>cx <Plug>(coc-fix-current)

    "UltiSnips triggers (Set above )
    " ExpandTrigger <S-Tab>
    " Forward Trigger <C-f>
    "Backward Trigger <C-b>

" Vifm --- <leader>f        (for filer)
"   noremap <Leader>fv :Vifm<CR>
"   noremap <Leader>f\ :VsplitVifm<CR>
"   noremap <Leader>f- :SplitVifm<CR>
"   noremap <Leader>dv :DiffVifm<CR>
"   noremap <Leader>tf :TabVifm<CR>



" NERDTree
    noremap <C-n> :NERDTreeToggle<CR>
    " Reload NERDTree
    nnoremap <leader>an :NERDTree<CR>

" ----- My Shortucts -----
" ----- With Leader ------

" Compile/make shortcuts --- <leader>m

" Preview shortcuts --- <leader>p
    nnoremap <leader>pm <Plug>MarkdownPreviewToggle

" Tab shortcuts --- <leader>t
    nnoremap <leader>tn :tabnew ~/Desktop/Notes/Notes.md<CR>
    nnoremap <leader>tc :tabnew ~/.config/nvim/init.vim<CR>
    nnoremap <leader>tv :tabnew ~/Desktop/Notes/VimNotes.md<CR>
    nnoremap <leader>tq :tabclose<CR>
    nnoremap <leader>tt :tabnew<CR>
   
" Window Shortcuts
    " New vertical split
    nnoremap <leader>\ <c-W>v
    " New horizontal split
    nnoremap <leader>- <C-W>s
    " Remap split movement to save key presses; integrate with tmux
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-l> <c-w>l
    nnoremap <c-h> <c-w>h


" Buffer shortcuts --- <leader>b

" Other Vim shortcuts --- <leader>v
    nnoremap <leader>ve :split ~/.config/nvim/init.vim<CR>
    nnoremap <leader>vr :source ~/.config/nvim/init.vim<CR>
    nnoremap <leader>vn :set relativenumber!<CR>
    " Clear search
    nnoremap <silent><leader>vsc :let @/ = ""<CR>


" Spell Checker
    noremap <silent><leader>vo :set spell!<CR>

" -- Other mappings --
    noremap G G$


" Move vertically by visual line
    noremap <silent> <expr> j (v:count ==0 ? 'gj' : 'j')
    noremap <silent> <expr> k (v:count ==0 ? 'gk' : 'k')

"Fix holding shift for too long
    cnoremap W w
    cnoremap Q q
    cnoremap Qa qa
