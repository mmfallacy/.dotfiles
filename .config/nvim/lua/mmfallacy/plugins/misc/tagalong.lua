local M = {
    "AndrewRadev/tagalong.vim",
}

function M.config()
    vim.cmd [[
                let g:tagalong_additional_filetypes = ['svelte']
            ]]
end

return M
