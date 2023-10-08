local N = {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
        require("treesitter-context").setup {}
    end,
}

local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
}

function M.config()
    require("nvim-treesitter.configs").setup {
        ensure_installed = {
            "bash",
            "c",
            "css",
            "git_rebase",
            "gitcommit",
            "gitignore",
            "html",
            "ini",
            "javascript",
            "jsdoc",
            "jsonc",
            "lua",
            "python",
            "rust",
            "sql",
            "svelte",
            "toml",
            "tsx",
            "typescript",
            "yaml",
        },
        indent = { enable = true },

        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        context_commentstring = {
            enable = true,
        },
    }
end

return {
    N,
    M,
}
