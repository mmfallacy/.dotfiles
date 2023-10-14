vim.api.nvim_create_user_command("Help", function(args)
    vim.cmd.help(args.args)
    vim.cmd.only()
    vim.cmd "set buflisted"
end, { nargs = 1, complete = "help" })
vim.cmd "cnoreabbrev hh Help"
vim.cmd "cnoreabbrev w update"

local function toggle_explorer_focus()
    local nt = require "nvim-tree.api"
    if nt.tree.is_tree_buf(0) then
        vim.cmd "wincmd p"
    else
        nt.tree.focus()
    end
end

vim.api.nvim_create_user_command("NvimTreeToggleFocus", toggle_explorer_focus, { nargs = 0 })
