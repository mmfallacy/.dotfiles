return function()
    vim.opt.list = true
    vim.opt.listchars:append "eol:↴"

    require("ibl").setup {
    }
end
