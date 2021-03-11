" CocInstall coc-json 设置行号 & 换行 & set ont tab = 4 space 
set number
set autoindent
set shiftwidth=4
set tabstop=4

set colorcolumn=81


" 光标所在行高亮
set cursorline

" 设置复制到剪切板
set clipboard=unnamed

" 设置开启高亮
" syntax on

" 设置进入粘贴模式
set pastetoggle=<F2>

" 设置高亮搜索
set hlsearch

" 设置leader键
let mapleader=","


" 设置jj切换回命令模式
inoremap jj <Esc>
inoremap jk <Esc>

" usr hjkl switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" 定义插入模式下,w保存文件修改并且返回normal模式
inoremap <leader>w <Esc>:w<cr>

" 定义插入模式下ctrl+d删除整行
inoremap <C-d> <Esc>dd


" vim-plus 插件
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" vim-startify 开屏插件安装
Plug 'mhinz/vim-startify'

" w0ng/vim-hybrid vim主题
" Plug 'w0ng/vim-hybrid'

" Plug yuttie/inkstained-vim 主题
" Plug 'yuttie/inkstained-vim'

" forest-Night 主题
" Plug 'sainnhe/forest-night'

" sickill/vim-monokai主题
" Plug 'sickill/vim-monokai'

" hardcoreplayers/oceanic-material主题
" Plug 'hardcoreplayers/oceanic-material'

" dues主题
Plug 'ajmwagar/vim-deus'

" nerdtree 目录树
Plug 'preservim/nerdtree'

" 成对插入
Plug 'jiangmiao/auto-pairs' 

" 状态栏插件 airline
" Plug 'vim-airline/vim-airline'

" 状态栏插件 GalaxyLine
" This is a SUPER FAST statusline,  and the ico pulgin of lua
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'ryanoasis/vim-devicons' " vimscript
" Plug 'kyazdani42/nvim-web-devicons' 

" Use release branch (recommend) coc.nvim补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf.vim搜索插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 快速打开历史文件
Plug 'jlanzarotta/bufexplorer'

" help you read complex code by showing diff level of parentheses in diff
" color !!（当前行高亮
Plug 'luochen1990/rainbow'

" vim-go插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 
" Initialize plugin system
call plug#end()

" 设置主题
" inkstained-vim主题
" syntax enable
" set background=light
" colorscheme inkstained

" hybrid主题
" set background=dark
" colorscheme hybrid

" Forest Night主题
" let g:forest_night_enable_italic = 1
" let g:forest_night_transparent_background = 1
" silent! colorscheme forest-night

" sickill/vim-monokai主题
" syntax enable
" colorscheme monokai

" Oceanic Material主题
" set background=dark
" colorscheme oceanic_material

" vim-deus主题
" set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Setting dark mode
set background=dark    
colorscheme deus
let g:deus_termcolors=256 


" ,g打开nerdtree
" ,v打开当前目录
nnoremap <leader>g :NERDTreeToggle<cr>
nnoremap <leader>v :NERDTreeFind<cr>

" ,h ,l 移动光标到行首行尾
nnoremap <leader>l $
nnoremap <leader>h ^

vnoremap <leader>l $
vnoremap <leader>h ^

" ,o ,a 模糊查询文件、模糊查询文件内容
nnoremap <silent> <leader>o :Files<cr>
nnoremap <silent> <leader>ag :Ag<cr>

" ,s 打开startify开屏k
nnoremap <silent> <leader>s :Startify<cr>

" ------------------------- compile and run ------------------------
source ~/.config/nvim/plugs/compile-run.vim

" ------------------ conquer of completion ---------------------
source ~/.config/nvim/plugs/coc.vim

"-------------------------- rainbow -------------------------------
source ~/.config/nvim/plugs/rainbow.vim

"-------------------------- stattify -------------------------------
source ~/.config/nvim/plugs/startify.vim
