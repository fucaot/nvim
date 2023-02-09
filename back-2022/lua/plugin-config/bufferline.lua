local status, bufferLine = pcall(require, "bufferLine")

if not status then
        vim.notify("没有找到 bufferLine")
    return
end

bufferLine.setup(
    {
        options = {
            -- 关闭 Tab 的命令，这里使用 moll/vim-bbye 的 :Bdelete 命令
            close_command = "Bdelete! %d",
            right_mouse_command = "Bdelete! %d",

            -- 侧边栏配置
            -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left",
                },
            },

            -- 使用nvim内置lsp
            diagnostics = "nvim-lsp",
        },
    }
)


vim.opt.termguicolors = true
