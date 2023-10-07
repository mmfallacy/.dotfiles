local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Themes
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = require "mmfallacy.configs.telescope",
        lazy = false,
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = require "mmfallacy.configs.nvim-tree",
    },

    -- Syntax analyzers
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = require "mmfallacy.configs.treesitter",
    },

    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },
    {
        "AndrewRadev/tagalong.vim",
        config = function()
            vim.cmd [[
                let g:tagalong_additional_filetypes = ['svelte']
            ]]
        end,
    },

    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            require("todo-comments").setup()
        end,
    },

    {
        "echasnovski/mini.comment",
        config = function()
            require("mini.comment").setup {
                mappings = {
                    comment = "gc",
                    comment_line = "gcc",
                    textobject = "gc",
                },
            }
        end,
    },

    {
        "echasnovski/mini.surround",
        config = function()
            require("mini.surround").setup()
        end,
    },

    {
        "echasnovski/mini.cursorword",
        config = function()
            require("mini.cursorword").setup()
        end,
    },

    {
        "echasnovski/mini.pairs",
        config = function()
            require("mini.pairs").setup {}
        end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            vim.opt.list = true
            vim.opt.listchars:append "eol:↴"
            require("ibl").setup {}
        end,
    },

    {
        "echasnovski/mini.tabline",
        config = function()
            require("mini.tabline").setup()
        end,
    },

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons", opt = true },
    },

    -- LSP and Snippets
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    { "rafamadriz/friendly-snippets" },
    { "L3MON4D3/LuaSnip" },
    {
        "hrsh7th/nvim-cmp",
        dependencies = { "L3MON4D3/LuaSnip" },
        config = require "mmfallacy.configs.cmp",
    },
    {
        "hrsh7th/cmp-buffer",
        dependencies = { "hrsh7th/nvim-cmp" },
    },
    {
        "saadparwaiz1/cmp_luasnip",
        dependencies = { "hrsh7th/nvim-cmp" },
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        dependencies = { "hrsh7th/nvim-cmp" },
    },
    {
        "hrsh7th/cmp-path",
        dependencies = { "hrsh7th/nvim-cmp" },
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "NoahTheDuke/vim-just",
    },

    -- Obsidian
    {
        "epwalsh/obsidian.nvim",
        lazy = false,
        event = {
            "BufReadPre " .. vim.fn.expand "~" .. "/Notes/**.md",
            "BufNewFile " .. vim.fn.expand "~" .. "/Notes/**.md",
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
            "nvim-telescope/telescope.nvim",
        },
        opts = {
            dir = "~/Notes",
        },
    },
    {
        "ixru/nvim-markdown",
        ft = "markdown",
        config = function()
            vim.cmd [[
                let g:vim_markdown_frontmatter = 1
                let g:vim_markdown_math = 1
                let g:vim_markdown_conceal = 1
                let g:vim_markdown_no_default_key_mappings = 1
            ]]
        end,
        keys = {},
        lazy = false,
    },
    {
        "lervag/vimtex",
        lazy = false,
        config = function()
            -- Attach autocmd as tectonic does not support auto recompile
            vim.cmd [[
                filetype plugin indent on
                syntax enable
                let g:vimtex_view_method = 'zathura'
                let g:vimtex_compiler_method = 'tectonic'

                autocmd BufWritePre *.tex silent VimtexCompileSS
            ]]
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        "kaarmu/typst.vim",
        ft = "typst",
        lazy = false,
        config = function()
            vim.cmd [[
                let g:typst_pdf_viewer = 'zathura'
            ]]
        end,
    },
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup {
                format_on_save = {
                    timeout_ms = 1000,
                    lsp_fallback = true,
                },
                formatters_by_ft = {
                    lua = { "stylua" },
                },
            }
        end,
    },
    { import = "mmfallacy.plugins" },
    { import = "mmfallacy.plugins.misc" },
}

require("lazy").setup(plugins)
-- return require 'packer'.startup(plugins)
