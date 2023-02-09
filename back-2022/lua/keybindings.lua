-- 定义leader键
vim.g.mapleader = ","
vim.g.maplocalleader = ","


-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- map('模式', '按键', '映射为', 'options')

-- 设置命令模式下jj jk 为Esc
map("i", "jk", "<ESC>", opt)
map("i", "jj", "<ESC>", opt)

-- 插件键位列表Map
local pluginKeys = {}

-- nvim-tree
pluginKeys.nvimTreeList = {

    -- 默认键位:
    -- tree 快捷键操作
    -- o 打开关闭文件夹
    -- a 创建文件
    -- r 重命名
    -- x 剪切
    -- c 拷贝
    -- p 粘贴
    -- d 删除
    -- 打开文件或文件夹
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
    -- 分屏打开文件
    { key = "v", action = "vsplit" },
    { key = "h", action = "split" },
    -- 显示隐藏文件
    { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
    { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
    -- 文件操作
    -- { key = "<F5>", action = "refresh" },
    -- { key = "a", action = "create" },
    -- { key = "d", action = "remove" },
    -- { key = "r", action = "rename" },
    -- { key = "x", action = "cut" },
    -- { key = "c", action = "copy" },
    -- { key = "p", action = "paste" },
    -- { key = "s", action = "system_open" },
}
-- -- leader + n 打开Tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', opt)


-- bufferline
-- 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
--"moll/vim-bbye"
map("n", "<leader>w", ":Bdelete!<CR>", opt)
-- map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
-- map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
-- map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- telescope 模糊搜索
map('n', "<Leader>o", ":Telescope find_files<CR>", opt)
map('n', "<Leader>ag", ":Telescope live_grep<CR>", opt)
pluginKeys = {
    i = {
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",
    }
}

-- lsp
-- lspsaga 替换原有快捷键
-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
    -- rename
    --[[
        Lspsaga 替换 rn
        mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
    --]]
    mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
    -- code action
    --[[
        Lspsaga 替换 ca
        mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
    --]]
    mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
    -- go xx
    --[[
        mapbuf('n', 'gd', '<cmd>Lspsaga preview_definition<CR>', opt)
    --]]
    mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
    --[[
        Lspsaga 替换 gh
        mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    --]]
    mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opt)
    --[[
        Lspsaga 替换 gr
        mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
    --]]
    mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
    --[[
        Lspsaga 替换 gp, gj, gk
        mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
        mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
        mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
    --]]
    -- diagnostic
    mapbuf("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
    mapbuf("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
    mapbuf("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
    mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
    -- 未用
    -- mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    -- mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
    -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
    -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
    -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
    -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    return {
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 上一个
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-n>"] = cmp.mapping.select_next_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    }
end

return pluginKeys






-- -- lsp 回调函数快捷键设置
-- pluginKeys.mapLSP = function(mapbuf)
--     -- rename
--     mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
--     -- code action
--     mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
--     -- go xx
--     mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
--     mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
--     mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
--     mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
--     mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
--     -- diagnostic
--     mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
--     mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
--     mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
--     mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
--     -- 没用到
--     -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
--     -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
--     -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
--     -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
--     -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
--     -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
-- end
