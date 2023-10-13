local M = {
    "ixru/nvim-markdown",
    ft = "markdown",
}

function M.config()
    vim.cmd [[
                let g:vim_markdown_frontmatter = 1
                let g:vim_markdown_math = 1
                let g:vim_markdown_conceal = 1
                let g:vim_markdown_no_default_key_mappings = 1

                let g:vim_markdown_fenced_languages = ['ts=typescript']
            ]]
end

local N = {
    "iamcco/markdown-preview.nvim",
}

function N.build()
    vim.fn["mkdp#util#install"]()
end

return {
    M,
    N,
}
