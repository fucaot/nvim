local packer = require("packer")


packer.startup({
    function(use)
        -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	
        -- vim中文文档
        use 'yianwillis/vimcdoc'

        ------------------------------------------ colorscheme ---------------------------------------------------------
        use("folke/tokyonight.nvim")

        -- gruvbox theme
        use {"ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" }}

        use {'shaunsingh/nord.nvim'}

        ------------------------------------------ plugins -------------------------------------------------------------
        -- dashboard-nvim 开屏
        use {
            'glepnir/dashboard-nvim',
            event = 'VimEnter',

            config = function()
                require('dashboard').setup {
                    -- config
            }
            end,
            requires = {'nvim-tree/nvim-web-devicons'}
        }

        -- 文件树
        use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })

        -- bufferline buffer
        use({ 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' })
        use ('moll/vim-bbye')

        -- line
        use({
            'glepnir/galaxyline.nvim',
            branch = 'main',
            -- your statusline
            -- config = function() require'plugin-config.galaxyline' end,
            -- some optional icons
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        })

        -- coc.nvim框架体系
        use {'neoclide/coc.nvim', branch = 'release'}

        -- telescope 模糊搜索
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }

    end,

    config = {

        -- 并发数限制
        max_jobs = 16,

        -- 自定义源
        git = {
            default_url_format = "https://github.com/%s",
        },

        display = {
            -- 浮动窗口
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        }
    },
})
