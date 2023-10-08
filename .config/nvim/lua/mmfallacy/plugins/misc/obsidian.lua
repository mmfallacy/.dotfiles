local M = {
    "epwalsh/obsidian.nvim",
}

M.event = {
    "BufReadPre " .. vim.fn.expand "~" .. "/Notes/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/Notes/**.md",
}
M.dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
}

M.opts = {
    dir = "~/Notes",
}

M.keys = {
    { "<leader>fo", "<cmd>ObsidianSearch<CR>" },
}

return M
