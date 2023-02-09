local status, telescope = pcall(require, "telescope")
if not status then
        vim.notify("没找到 telescope")
    return
end

telescope.setup(
    {
        defaults = {
            -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
            initial_mode = "insert",

            -- 窗口内快捷键
            mappings = require("keybindings").telescopeList,
        },

        pickers = {
            -- 内置picker配置
            find_files = {}
        },

        -- 扩展配置
        extensions = {},
    }
)
