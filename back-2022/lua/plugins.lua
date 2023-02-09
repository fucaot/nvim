local packer = require("packer")

packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'

        -- vim中文文档
        use 'yianwillis/vimcdoc"

        use("moll/vim-bbye")

        ------------------------------------------ colorscheme ---------------------------------------------------------
        use("folke/tokyonight.nvim")

        -- gruvbox theme
        use {
            "ellisonleao/gruvbox.nvim",
            requires = { "rktjmp/lush.nvim" }
        }


        ------------------------------------------ plugins ---------------------------------------------------------
        use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })

        -- bufferline buffer
        use({ 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' })

        -- galaxyline
        use({
            'glepnir/galaxyline.nvim',
            branch = 'main',
            -- your statusline
            -- config = function() require'plugin-config.galaxyline' end,
            -- some optional icons
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        })

        -- telescope 模糊搜索
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }

        -- dashboard-nvim 开屏
        use("glepnir/dashboard-nvim")

        -- project
        use("ahmedkhalf/project.nvim")

        -- treesitter 代码高亮
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

        -- nvim-autopairs
        use("windwp/nvim-autopairs")

        -- lsp
        --------------------- LSP --------------------
        use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })

        -- Lspconfig
        use({ "neovim/nvim-lspconfig" })


        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")

        -- ui
        use("onsails/lspkind-nvim")
        use("tami5/lspsaga.nvim")
        -- 代码格式化
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
        -- Rust 增强
        use("simrat39/rust-tools.nvim")

    end,

    config = {

        -- 并发数限制
        max_jobs = 16,

        -- 自定义源
        git = {
            default_url_format = "https://github.com/%s",
        },

        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        }
    },
})

-- vim脚本 保存则自动执行 ‘PackerSync’
pcall(
    vim.cmd,
    [[
        augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)
