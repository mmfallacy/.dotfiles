local M = {
    "nvim-tree/nvim-tree.lua",
}

local function on_attach(bufnr)
    local api = require "nvim-tree.api"
    api.config.mappings.default_on_attach(bufnr)
end

function M.config()
    require("nvim-tree").setup {
        on_attach = on_attach,
        auto_reload_on_write = false,
        update_cwd = true,
        hijack_cursor = true,
        renderer = {
            add_trailing = true,
            group_empty = true,
            indent_markers = { enable = true },
            icons = {
                show = {
                    file = false,
                    folder = false,
                    folder_arrow = false,
                    git = false,
                    modified = false,
                },
            },
        },
        view = {
            side = "right",
        },
    }
end

return M
