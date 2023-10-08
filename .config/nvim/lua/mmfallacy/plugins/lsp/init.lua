local M = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        -- Other
        { "folke/neodev.nvim", opts = {} },
    },
}

M.event = { "BufReadPre", "BufNewFile" }

M.config = require "mmfallacy.plugins.lsp.setup"

return M
