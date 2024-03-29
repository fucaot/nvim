local status, nvim_tree = pcall(require, "nvim-tree")

-- 获取快捷键Map
-- local list_keys = require('keybindings').nvimTreeList
require("nvim-tree").setup({
        -- 显示git状态图标
        git = {
        	enable = true
        },

        -- 不隐藏.文件 和隐藏.project文件夹
        filters = {
            dotfiles = false,
            custom = { '.project' },
        },

        -- 显示设置
        view = {
            -- 宽度
            width = 40,

            -- 也可以 'right'
            side = 'left',

            -- 隐藏根目录
            hide_root_folder = false,

            -- 自定义列表中快捷键
            mappings = {
                custom_only = false,
                list = list_keys,
            },

            -- 不显示行数
            number = false,

            relativenumber = false,

            -- 显示图标
            signcolumn = 'yes',
        },

        -- 行为
        actions = {
            open_file = {
                -- 首次打开大小适配
                resize_window = true,
                -- 打开文件时不关闭
                quit_on_open = false,
            },
        },

        -- wsl install -g wsl-open
        -- https://github.com/4U6U57/wsl-open/
        system_open = {
            -- cmd = 'wsl-open',
            cmd = 'open',
        },

        -- project plugin 需要这样设置
        update_cwd = true,
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
})

--
-- 自动关闭
vim.cmd(
    [[
        autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
    ]]
)
