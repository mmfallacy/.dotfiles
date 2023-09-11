return function()
    require("catppuccin").setup({
        flavor = "mocha",
    })

    vim.cmd.colorscheme "catppuccin"

    require('lualine').setup {
        options = {
            theme = "catppuccin"
        }
    }
end
