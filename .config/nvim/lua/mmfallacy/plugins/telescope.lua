local M = {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
}

function M.config()
    require("telescope").setup {
        defaults = {
            file_ignore_patterns = { "node_modules/", ".git/", ".svelte-kit/" },
        },
        pickers = {
            find_files = {
                hidden = true,
                find_command = { "rg", "--files" },
            },
        },
    }
    require("telescope").load_extension "ui-select"
end

M.keys = {

    {
        "<leader>fg",
        function()
            require("telescope.builtin").git_files()
        end,
    },
    {
        "<leader>fr",
        function()
            require("telescope.builtin").live_grep()
        end,
    },
    {
        "<leader>fp",
        function()
            require("telescope.builtin").find_files()
        end,
    },
    {
        "<leader>f,",
        function()
            require("telescope.builtin").find_files { cwd = vim.fn.stdpath "config" }
        end,
    },
    {
        "<leader>ft",
        function()
            require("telescope.builtin").treesitter()
        end,
    },
    {
        "<leader>fb",
        function()
            require("telescope.builtin").buffers()
        end,
    },
    { "<leader>fc", "<CMD>TodoTelescope<CR>" },
}

return M
