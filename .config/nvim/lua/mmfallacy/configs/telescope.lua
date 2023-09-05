return function()
    require "telescope".setup {
        defaults = {
            file_ignore_patterns = { "node_modules\\", ".git\\", ".svelte-kit\\" },
        },
        pickers = {
            find_files = {
                hidden = true,
                find_command = { 'rg', '--files' }
            }
        }
    }
end
