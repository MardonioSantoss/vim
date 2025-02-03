" ~/.vimrc
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2

syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim


call plug#begin('~/.vim/plugged')

" vim closetag
Plug 'alvan/vim-closetag'


" auto-pairs facha tag
Plug 'jiangmiao/auto-pairs'

" Lista de plugins
Plug 'sheerun/vim-polyglot'

" Lint: ALE + flake8 + isort + yapf
Plug 'w0rp/ale', { 'do': 'pip install --break-system-packages flake8 isort yapf' }

" jedi-vim
Plug 'maralla/completor.vim', { 'do': 'pip install --break-system-packages jedi' }

" vim dispatch 
Plug 'tpope/vim-dispatch'

"  nerdtree
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim test
Plug 'janko-m/vim-test'

" theme Dracula
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'yapf',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ]
\}

" let colorscheme = "dracula"
" let colorscheme_bg = "dark"

let g:jedi#completions_enabled = 0
let test#python#runner = 'pytest'


colorscheme dracula
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set undolevels=1000
set background=dark
set backspace=indent,eol,start


" HTML JS
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


" integer value [0|1]
" Enables closing tags for React fragments -> <></> for all supported file types
"
let g:closetag_enable_react_fragment = 1
" Disable closing tags for React fragments -> <></> for all supported file types
"
let g:closetag_enable_react_fragment = 0

