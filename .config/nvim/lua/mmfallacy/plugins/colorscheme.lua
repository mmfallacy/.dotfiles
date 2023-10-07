return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup {
            flavor = "mocha",
        }
        vim.cmd.colorscheme "catppuccin"
        require("lualine").setup {
            options = {
                theme = "catppuccin",
            },
        }
    end,
}
