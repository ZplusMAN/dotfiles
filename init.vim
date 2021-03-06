" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"Plug 'sbdchd/neoformat'
" " On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
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
" Plug '~/my-prototype-plugin'
"
" Plug 'Valloric/YouCompleteMe'
 "添加rust语言支持
 "Plug 'rust-lang/rust.vim'
" " Initialize plugin system
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'Yggdroot/indentLine'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'JamshedVesuna/vim-markdown-preview'
"Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'
"Plug 'vim-scripts/candy.vim'
Plug 'yianwillis/vimcdoc'
Plug 'airblade/vim-gitgutter'
"Plug 'jeaye/color_coded'
"Plug 'w0rp/ale'
"Plug 'tpope/vim-fugitive'
"Plug 'Chiel92/vim-autoformat'
"Plug 'lfv89/vim-interestingwords'
" " Or install latest release tag
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
"Plug 'kshenoy/vim-signature'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'
"Plug 'micha/vim-colors-solarized'
"Plug 'plasticboy/vim-markdown'
Plug 'vimwiki/vimwiki'
"Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'konfekt/fastfold'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
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
 set wildmenu
 "打开自动保存功能
 set autowrite
 set relativenumber
 "配置rainbow_parentheses插件
 let g:rbpt_colorpairs = [
     \ ['brown',       'RoyalBlue3'],
     \ ['Darkblue',    'SeaGreen3'],
     \ ['darkgray',    'DarkOrchid3'],
     \ ['darkgreen',   'firebrick3'],
     \ ['darkcyan',    'RoyalBlue3'],
     \ ['darkred',     'SeaGreen3'],
     \ ['darkmagenta', 'DarkOrchid3'],
     \ ['brown',       'firebrick3'],
     \ ['gray',        'RoyalBlue3'],
     \ ['black',       'SeaGreen3'],
     \ ['darkmagenta', 'DarkOrchid3'],
     \ ['Darkblue',    'firebrick3'],
     \ ['darkgreen',   'RoyalBlue3'],
     \ ['darkcyan',    'SeaGreen3'],
     \ ['darkred',     'DarkOrchid3'],
     \ ['red',         'firebrick3'],
     \ ]
 let g:rbpt_max = 16
 let g:rbpt_loadcmd_toggle = 0
 syntax enable
 "colorscheme solarized
 autocmd FileType json syntax match Comment +\/\/.\+$+

 function! s:check_back_space() abort
	 let col = col('.') - 1
	 return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

 set mouse=a
 set foldcolumn=1
 let g:rainbow_active = 1
 nmap zuz <Plug>(FastFoldUpdate)
 set ignorecase
