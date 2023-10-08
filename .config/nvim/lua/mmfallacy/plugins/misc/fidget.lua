local M = {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    config = function()
        require("fidget").setup {}
    end,
}

return M
