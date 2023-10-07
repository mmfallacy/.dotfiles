local M = {
    "stevearc/conform.nvim",
}

function M.config()
    require("conform").setup {
        format_on_save = {
            timeout_ms = 1000,
            lsp_fallback = true,
        },
        formatters_by_ft = {
            lua = { "stylua" },
        },
    }
end

return M
