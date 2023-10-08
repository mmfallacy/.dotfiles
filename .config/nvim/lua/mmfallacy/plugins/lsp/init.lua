local M = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        -- Other
        { "folke/neodev.nvim", opts = {} },
    },
}

M.event = { "BufReadPre", "BufNewFile" }

function M.config()
    local caps = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
    local lsp = require "lspconfig"

    local function c(config)
        return vim.tbl_deep_extend("force", {
            on_attach = on_attach,
            capabilities = caps,
        }, config or {})
    end

    require("mason").setup {}
    require("mason-lspconfig").setup {
        ensure_installed = {
            "tsserver",
            "lua_ls",
            "rust_analyzer",
            "emmet_ls",
            "denols",
            "svelte",
            "pyright",
            "tailwindcss",
            "jdtls",
            "typst_lsp",
            "eslint",
        },
    }

    require("mason-lspconfig").setup_handlers {
        function(server_name)
            lsp[server_name].setup(c())
        end,

        ["eslint"] = function()
            lsp.eslint.setup {
                on_attach = function(client, bufnr)
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        command = "EslintFixAll",
                    })
                    on_attach(client, bufnr)
                end,
                capabilities = caps,
            }
        end,

        ["lua_ls"] = function()
            require("neodev").setup {}
            lsp.lua_ls.setup(c {
                settings = {
                    Lua = {
                        workspace = {
                            checkThirdParty = false,
                        },
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })
        end,

        ["denols"] = function()
            lsp.denols.setup(c {
                root_dir = lsp.util.root_pattern("deno.jsonc", "deno.json"),
                settings = {
                    deno = {
                        enable = true,
                        lint = true,
                        config = "deno.jsonc",
                    },
                },
                filetypes = {
                    "json",
                    "jsonc",
                    "javascript",
                    "javascriptreact",
                    "javascript.jsx",
                    "typescript",
                    "typescriptreact",
                    "typescript.tsx",
                },
            })
        end,
        ["tsserver"] = function()
            lsp.tsserver.setup(c {
                single_file_support = false,
                root_dir = lsp.util.root_pattern("package.json", "tsconfig.json", "tsconfig.jsonc", "package.jsonc"),
            })
        end,

        ["emmet_ls"] = function()
            lsp.emmet_ls.setup(c {
                filetypes = {
                    "html",
                    "typescriptreact",
                    "javascriptreact",
                    "css",
                    "sass",
                    "scss",
                    "svelte",
                },
            })
        end,
        ["typst_lsp"] = function()
            lsp.typst_lsp.setup(c {
                single_file_support = true,
            })
        end,
    }
end

return M
