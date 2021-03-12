" Specify a directory for plugins
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

" spaceline 状态栏插件
Plug 'hardcoreplayers/spaceline.vim'

" spaceline required plug
Plug 'ryanoasis/vim-devicons'

" dues主题
Plug 'ajmwagar/vim-deus'

" nerdtree 目录树
Plug 'preservim/nerdtree'

" 成对插入
Plug 'jiangmiao/auto-pairs' 

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

" --------------------------- key -----------------------------------
source ~/.config/nvim/priv/key.vim

"-------------------------- colorscheme ---------------------------
source ~/.config/nvim/priv/scheme.vim

" ------------------------- compile and run -----------------------
source ~/.config/nvim/plugs/compile-run.vim

" ------------------ conquer of completion ------------------------
source ~/.config/nvim/plugs/coc.vim

"-------------------------- rainbow -------------------------------
source ~/.config/nvim/plugs/rainbow.vim

"-------------------------- stattify ------------------------------
source ~/.config/nvim/plugs/startify.vim
