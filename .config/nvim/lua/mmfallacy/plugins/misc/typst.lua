local M = {
    "kaarmu/typst.vim",
    ft = "typst",
}

function M.config()
    vim.cmd [[
                let g:typst_pdf_viewer = 'zathura'
            ]]
end

return M
