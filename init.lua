-- Packer
require('plugins')

-- 基础设置
require('basic')

-- 键位设置
require('keybindings')

-- 主题设置
require('colorscheme')

-- 插件设置
require('plugin-config.nvim-tree')
require('plugin-config.bufferline')
require('plugin-config.galaxyline')
require('plugin-config.telescope')
require('plugin-config.dashboard')
require('plugin-config.project')
require('plugin-config.nvim-treesitter')
require('plugin-config.nvim-autopairs')

-- lsp
require('lsp.setup')
require('lsp.cmp')
require('lsp.ui')
-- null-ls 格式化目前存在问题，暂时使用lsp格式化
-- require("lsp.null-ls")
