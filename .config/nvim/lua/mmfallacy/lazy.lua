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

    -- Syntax analyzers
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = require "mmfallacy.configs.treesitter",
    },

    -- Lualine

    -- LSP and Snippets
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    -- Obsidian
    { import = "mmfallacy.plugins" },
    { import = "mmfallacy.plugins.misc" },
}

require("lazy").setup(plugins)
-- return require 'packer'.startup(plugins)
