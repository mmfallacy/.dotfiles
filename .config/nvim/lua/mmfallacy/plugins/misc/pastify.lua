local M = {
    "TobinPalmer/pastify.nvim",
    lazy = false,
}

function M.config()
    require("pastify").setup {
        opts = {
            local_path = "/assets/imgs/",
            save = "local",
        },
        ft = {
            typst = '#image("$IMG$")',
        },
    }
end

M.keys = {
    { "<leader>pi", "<cmd>Pastify<CR>", desc = "Paste Image from clipboard" },
}

return M
