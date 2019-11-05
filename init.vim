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

    Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}

    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tmsvg/pear-tree'
    Plug 'tpope/vim-commentary'
	"Plug 'ctrlpvim/ctrlp.vim'"
	Plug 'junegunn/goyo.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'lervag/vimtex'
	Plug 'airblade/vim-gitgutter'
	" Plug 'nathanaelkane/vim-indent-guides'
	Plug 'mattn/emmet-vim'
	"Plug 'tomtom/tcomment_vim'"
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'othree/es.next.syntax.vim'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'

    if has('nvim')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif


call plug#end()

nmap <Leader>n :NERDTreeToggle<CR>

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

let g:vim_jsx_pretty_colorful_config = 1

let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

set number relativenumber


let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
let g:pear_tree_repeatable_expand = 0

nnoremap <c-p> :FZF<cr>


let g:airline#extensions#tabline#enabled = 1
