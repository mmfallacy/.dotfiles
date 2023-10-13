local M = {
    "stevearc/conform.nvim",
}

function M.config()
    local js_formatters = { { "prettierd", "prettier", "biome" } }

    require("conform.formatters.prettierd").env = {
        PRETTIERD_LOCAL_PRETTIER_ONLY = true,
    }

    require("conform").setup {
        format_on_save = {
            timeout_ms = 1000,
            lsp_fallback = true,
        },
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = js_formatters,
            typescript = js_formatters,
            svelte = js_formatters,
        },
    }
end

return M
