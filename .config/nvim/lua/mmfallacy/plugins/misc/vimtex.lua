local M = {
    "lervag/vimtex",
}

function M.config()
    vim.cmd [[
                filetype plugin indent on
                syntax enable
                let g:vimtex_view_method = 'zathura'
                let g:vimtex_compiler_method = 'tectonic'
                autocmd BufWritePre *.tex silent VimtexCompileSS
            ]]
end

return M
