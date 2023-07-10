local colorscheme = "nord"
-- gruvbox
-- zephyr (存在Treesitter配色冲突)
-- nord
-- onedark
-- tokyonight
-- OceanicNext
-- https://github.com/topics/neovim-colorscheme

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
    return
end
