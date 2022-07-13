" CocInstall coc-json 设置行号 & 换行 & set ont tab = 4 space 
set number
set autoindent
set shiftwidth=4
set tabstop=4

set colorcolumn=81

" UTF-8
set encoding=UTF-8

" 设置复制到剪切板
set clipboard=unnamed

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

" 设置字体大小
