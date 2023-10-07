function on_attach(_, bufnr)
    local opts = { noremap = true, silent = true }
    local function bufmap(combo, macro)
        vim.api.nvim_buf_set_keymap(bufnr, "n", combo, macro, opts)
    end

    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Hover
    bufmap("K", vim.lsp.buf.hover)
    -- Signature Help
    bufmap("<C-k>", vim.lsp.buf.signature_help)
    -- Format buffer
    bufmap("<leader>fmt", function()
        require("conform").format { async = true }
    end)
    -- Show line diagnostics
    bufmap("<leader>ld", function()
        vim.diagnostic.open_float { scope = "line" }
    end)
    -- Show code actions
    bufmap("<leader>ca", vim.lsp.buf.code_action)
    -- Rename symbol
    bufmap("<F2>", vim.lsp.buf.rename)

    local t = require "telescope.builtin"
    -- Show workspace diagnostics
    bufmap("<leader>wd", t.diagnostics)
    -- Show buffer diagnostics
    bufmap("<leader>dd", function()
        t.diagnostics { bufnr = 0 }
    end)
    -- Go to Definition
    bufmap("gd", t.lsp_definitions)
    -- Go to Type Definition
    bufmap("gt", t.lsp_type_definitions)
    -- Go to References
    bufmap("gr", t.lsp_references)
    -- Show document Symbols
    bufmap("<leader>ds", t.lsp_document_symbols)
end

return on_attach
