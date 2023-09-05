return function()
    local od = require 'onedark'
    od.setup({
        style = "dark",
        term_colors = true,
        ending_tildes = false,
    })
    od.load()

    local ll = require 'lualine'
    ll.setup({
        options = {
            theme = 'onedark'
        }
    })
end
