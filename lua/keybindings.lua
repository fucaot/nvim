-- 定义leader键
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- ----------------------------------------
-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 设置命令模式下jj jk 为Esc
map("i", "jk", "<ESC>", opt)
map("i", "jj", "<ESC>", opt)

-----------------------------------------
--dashbord
map('n', '<leader>e', ':Dashboard<CR>', opt)

------------------------------------------
-- nvim-tree文件树配置
-- leader + n 打开Tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', opt)


------------------------------------------
-- telescope搜索
-- telescope 模糊搜索
map('n', "<Leader>o", ":Telescope find_files<CR>", opt)
map('n', "<Leader>ag", ":Telescope live_grep<CR>", opt)

-------------------------------------------
---- buffline
-- 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>w", ":Bdelete!<CR>", opt)


-- ----------------------------------------
-- coc.nvim
local keyset = vim.keymap.set

-- 使用 [g] 查找上一个或下一个报错
-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- 查看函数定义或者被调用
-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})

keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})


-- 使用,h进行查看文档
-- Use ,h to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "<leader>h", '<CMD>lua _G.show_docs()<CR>', {silent = true})

-- 变量重命名
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- 代码格式化
-- Formatting selected code
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})


-- 选中代码操作
-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>ah", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>ah", "<Plug>(coc-codeaction-selected)", opts)
