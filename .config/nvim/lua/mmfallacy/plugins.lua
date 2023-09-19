local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Themes
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = require 'mmfallacy.themes.catppuccin'
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = require 'mmfallacy.configs.telescope'
    },
    {
        'nvim-tree/nvim-tree.lua',
        config = require 'mmfallacy.configs.nvim-tree'
    },

    -- Syntax analyzers
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = require 'mmfallacy.configs.treesitter'
    },

    {
        'norcalli/nvim-colorizer.lua',
        config = function() require "colorizer".setup() end
    },
    {
        'AndrewRadev/tagalong.vim',
        config = function()
            vim.cmd [[
                let g:tagalong_additional_filetypes = ['svelte']
            ]]
        end
    },

    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },

        config = function() require 'todo-comments'.setup() end
    },

    {
        'echasnovski/mini.comment',
        config = require 'mmfallacy.configs.comment'
    },

    {
        'echasnovski/mini.surround',
        config = function() require 'mini.surround'.setup() end
    },

    {
        'echasnovski/mini.cursorword',
        config = function() require 'mini.cursorword'.setup() end
    },

    {
        'echasnovski/mini.pairs',
        config = require 'mmfallacy.configs.autopairs'
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        config = require 'mmfallacy.configs.indents'
    },

    {
        'echasnovski/mini.tabline',
        config = function() require 'mini.tabline'.setup() end
    },


    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
    },

    -- LSP and Snippets
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'rafamadriz/friendly-snippets' },
    { 'L3MON4D3/LuaSnip' },
    {
        'hrsh7th/nvim-cmp',
        dependencies = { 'L3MON4D3/LuaSnip' },
        config = require 'mmfallacy.configs.cmp',
    },
    {
        'hrsh7th/cmp-buffer',
        dependencies = { 'hrsh7th/nvim-cmp' },
    },
    {
        'saadparwaiz1/cmp_luasnip',
        dependencies = { 'hrsh7th/nvim-cmp' },
    },
    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = { 'hrsh7th/nvim-cmp' },
    },
    {
        'hrsh7th/cmp-path',
        dependencies = { 'hrsh7th/nvim-cmp' },
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function() require 'gitsigns'.setup() end
    },
    {
        'NoahTheDuke/vim-just',
    }
}

require 'lazy'.setup(plugins)
-- return require 'packer'.startup(plugins)
