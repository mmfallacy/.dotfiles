vim.api.nvim_create_user_command(
    'Help',
    function(args)
        vim.cmd.help(args.args)
        vim.cmd.only()
        vim.cmd('set buflisted')
    end,
    { nargs = 1, complete = 'help' }
)
vim.cmd("cnoreabbrev hh Help")
