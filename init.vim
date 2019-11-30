filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Leader key
let mapleader = ","


call plug#begin(stdpath('data') . '/plugged')
" Polyglot - syntax highlighting for almost everything
Plug 'sheerun/vim-polyglot'

" Tree view of project
Plug 'scrooloose/nerdtree'

" fzf - ctrl + p functionality
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <c-p> :FZF<cr>

" surround text with quotes or parenthesis etc.
Plug 'tpope/vim-surround'

" auto closes pairs
Plug 'jiangmiao/auto-pairs'
" smart auto closing
Plug 'tmsvg/pear-tree'

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
let g:pear_tree_repeatable_expand = 0

" commenting
Plug 'tpope/vim-commentary'
"Plug 'scrooloose/nerdcommenter' 

" zen mode
Plug 'junegunn/goyo.vim'

" bloated lines in vim look more like a hacker
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
" Plug 'nathanaelkane/vim-indent-guides'

" html + css ninja tool
Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,php,scss,sass,css EmmetInstall

" jsx syntax
Plug 'maxmellon/vim-jsx-pretty'

"es.next syntax
Plug 'othree/es.next.syntax.vim'

"snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

"save as root using suda:// protocol (suda://%) (% = current file)
Plug 'lambdalisue/suda.vim'

" projectwise editorconfig (use spaces or tabs, use 2 or 4 width etc.)
Plug 'editorconfig/editorconfig-vim'

" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

nmap <Leader>n :NERDTreeToggle<CR>

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'



let g:vim_jsx_pretty_colorful_config = 1

let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1


let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

set number relativenumber





let g:airline#extensions#tabline#enabled = 1
