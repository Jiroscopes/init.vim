call plug#begin('~/AppData/Local/nvim/autoload')

Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'

"Color Theme
"Plug 'yuqio/vim-darkspace'
"Plug 'joshdick/onedark.vim'
Plug 'lucasprag/simpleblack'

"Rust
Plug 'rust-lang/rust.vim'
" Plug 'autozimu/LanguageClient-neovim', {
"	\'branch': 'next',
"	\'do': 'bash install.sh',
"	\}

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Multi-entry selection UI
Plug 'junegunn/fzf'

call plug#end()

set background=dark
set termguicolors
colorscheme simpleblack

set cmdheight=2
" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Rust format on save
let g:rustfmt_autosave = 1
