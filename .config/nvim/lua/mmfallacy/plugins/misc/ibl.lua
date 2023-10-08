local M = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
}

function M.config()
    vim.opt.list = true
    vim.opt.listchars:append "eol:↴"
    require("ibl").setup {}
end

return M
