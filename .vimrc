" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
 Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'
"
 Plug 'Valloric/YouCompleteMe'
 "添加rust语言支持
 "Plug 'rust-lang/rust.vim'
" " Initialize plugin system
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
"Plug 'makerj/vim-pdf'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/candy.vim'
Plug 'yianwillis/vimcdoc'
Plug 'airblade/vim-gitgutter'
"Plug 'jeaye/color_coded'
"Plug 'w0rp/ale'
call plug#end()
 set showcmd
 set cursorline
 syntax on
 set t_Co=256
 filetype indent on
 set encoding=utf-8 
 set nu
 set autoindent
 set incsearch
