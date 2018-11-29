

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
"call plug#begin('~/.vim/plugged')
"
"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
"" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"
"" file system explorer
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"
"
"" markdown syntax
"" Plug 'plasticboy/vim-markdown'
"
"" YouCompleteMe
"Plug 'valloric/youcompleteme'
"
"" Theme monokai
"Plug 'sickill/vim-monokai'
"
"" Track the engine.
"Plug 'SirVer/ultisnips'
"
"" Snippets are separated from the engine.
"Plug 'honza/vim-snippets'
"
"" statusline/tabline
"Plug 'itchyny/lightline.vim'
"
"" command-line fuzzy finder
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"
"" Tag bar
"Plug 'majutsushi/tagbar'
"
"" Git wrapper
"Plug 'tpope/vim-fugitive'
"
"" Surround
"Plug 'tpope/vim-surround'
"
"" go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"
"" rust
"Plug 'rust-lang/rust.vim'
"
"" rust racer
"Plug 'racer-rust/vim-racer'
"
"" julia
"Plug 'JuliaEditorSupport/julia-vim'
"
"" LaTex
"Plug 'lervag/vimtex'
"
"" ale
"Plug 'w0rp/ale'
"
"call plug#end()


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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"nmap <F8> :TagbarToggle<CR>
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" YouCompleteMe 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" UltiSnips 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" go
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" Open :GoDeclsDir with ctrl-g
"nmap <C-g> :GoDeclsDir<cr>
"imap <C-g> <esc>:<C-u>GoDeclsDir<cr>
"
"" replaces the current buffer with the alternate file.
"autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')  
"" open a new vertical split with the alternate file.
"autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit') 
"" open the alternate file in a new split view.
"autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split') 
"" open the alternate file in a new table.
"autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe') 
"
"let g:go_fmt_command = "goimports"
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_operators = 1
"
"" vet lint errcheck
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
"let g:go_metalinter_deadline = "5s"
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
