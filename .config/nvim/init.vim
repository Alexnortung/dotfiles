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
" Lanuage client to make gd work across files and much more
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" Automatically start language servers.
" let g:LanguageClient_autoStart = 1
" set fsharp language server
" let g:LanguageClient_serverCommands = {}

" Polyglot - syntax highlighting for almost everything
Plug 'sheerun/vim-polyglot'

" Tree view of project
Plug 'scrooloose/nerdtree'
nmap <Leader>n :NERDTreeToggle<CR>

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
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Gitgutter
Plug 'airblade/vim-gitgutter'
" Plug 'nathanaelkane/vim-indent-guides'

" html + css ninja tool
Plug 'mattn/emmet-vim'
" let g:user_emmet_install_global = 0
" autocmd FileType html,php,scss,sass,css,jsx EmmetInstall

" jsx syntax
Plug 'maxmellon/vim-jsx-pretty'
let g:vim_jsx_pretty_colorful_config = 1

"es.next syntax
Plug 'othree/es.next.syntax.vim'

"snippets
"Plug 'sirver/ultisnips'
"Plug 'honza/vim-snippets'
"let g:UltiSnipsExpandTrigger = '<c-e>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"save as root using suda:// protocol (suda://%) (% = current file)
Plug 'lambdalisue/suda.vim'

" projectwise editorconfig (use spaces or tabs, use 2 or 4 width etc.)
Plug 'editorconfig/editorconfig-vim'

" F# language server
"Plug 'fsprojects/fsharp-language-server', {'do': 'npm install && dotnet build -c Release'}

" Omnisharp for completion for C#
"Plug 'OmniSharp/omnisharp-vim'
" Use the stdio version of OmniSharp-roslyn:
"let g:OmniSharp_server_stdio = 1

" You complete me auto completion
"Plug 'ycm-core/YouCompleteMe' ", { 'do': 'python install.py --rust-completer --cs-completer' }

" Deoplete auto completion
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

" auto completion
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
"" Better display for messages
"set cmdheight=2
"
"" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)
"
"" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

call plug#end()

" set conceallevel=1
set number relativenumber
