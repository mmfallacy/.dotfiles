return function()
    local c = require 'mini.comment'
    c.setup {
        mappings = {
            comment = 'gc',
            comment_line = 'gcc',
            textobject = 'gc',
        }
    }
end
