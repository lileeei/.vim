"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" global setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set autowrite
" Set to auto read when a file is changed from outside
set autoread
set nocompatible
set background=dark
" 解决Vim插入模式下backspace按键无法删除字符的问题
set backspace=indent,eol,start
set number

" Open status line at any time
set laststatus=2

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as standard file type
set ffs=unix,dos,mac

" Enable syntax highlighting
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" gruvbox
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set bg=dark                     "设置背景为黑色
colorscheme gruvbox             "设置主题为 gruvbox
set guioptions=                 "去掉两边的scrollbar

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" vim-airline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" ALE 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"文件内容发生变化时不进行检查
let g:ale_lint_on_text_changed = 'never'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" YouCompleteMe 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" UltiSnips 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
nmap <F5> :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

" replaces the current buffer with the alternate file.
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')  
" open a new vertical split with the alternate file.
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit') 
" open the alternate file in a new split view.
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split') 
" open the alternate file in a new table.
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe') 

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1

" vet lint errcheck
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"




"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'fugitive#head'
"      \ },
"      \ }
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" rust
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"set hidden
"let g:rustfmt_autosave = 1	" enable automatic running of RustFmt when save a buffer 
"let g:racer_cmd = "/Users/leili/.cargo/bin/racer"
"" let $RUST_SRC_PATH="<path-to-rust-srcdir>/src/"
"let g:racer_experimental_completer = 1
"au FileType rust nmap gd <Plug>(rust-def)
"au FileType rust nmap gs <Plug>(rust-def-split)
"au FileType rust nmap gx <Plug>(rust-def-vertical)
"" au FileType rust nmap <leader>gd <Plug>(rust-doc)
