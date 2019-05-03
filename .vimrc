 if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
         autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
         endif
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
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'}
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
 Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
 Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'
"安装YCM
Plug 'Valloric/YouCompleteMe'
 "vim中文文档
 Plug 'vimcn/vimcdoc'
 "自动字符对齐插件
 Plug 'junegunn/vim-easy-align'
 "在vim中显示状态栏和漂亮的配色
 Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
 "安装显示缩进指示线
 Plug 'Yggdroot/indentLine'
" " Initialize plugin system
" 格式化代码
 "Plug 'Chiel92/vim-autoformat'
 "Plug 'w0rp/ale'
 Plug 'python-mode/python-mode', { 'branch': 'develop' }
 Plug 'tpope/vim-fugitive'

 "vim中文文档
 Plug 'vimcn/vimcdoc'
 "安装vim python插件
 Plug 'davidhalter/jedi-vim'
 "设置vim颜色主题为dracule
 Plug 'dracula/vim', { 'as': 'dracula' }
 "Plug 'zxqfl/tabnine-vim'
 "Plug 'w0rp/ale'
 " post install (yarn install | npm install)
 "Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
 "Plug 'Raimondi/delimitMate'
 call plug#end()



"突出显示当前行
set cul
"显示空格和tab
set listchars=tab:>-,trail:-
"突出显示当前列
"set cuc 
set nu
set mouse=a
"设置搜索语法高亮
set hlsearch 
set laststatus=2    " 始终显示状态栏

 "Airline
 let g:airline#extensions#tabline#enabled=1    " 开启 tab 栏
 "设置python的语法为python3
 let g:pymode_python = 'python3'
 "color drcula
 "set background=dark
 if has('nvim')
	   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   else
	     Plug 'Shougo/deoplete.nvim'
	       Plug 'roxma/nvim-yarp'
	         Plug 'roxma/vim-hug-neovim-rpc'
	 endif
 let g:deoplete#enable_at_startup = 1
 syntax on 
 "color dracula
"让vimrc配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

