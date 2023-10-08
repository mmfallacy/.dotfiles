local Comment = {
    "echasnovski/mini.comment",
}

function Comment.config()
    require("mini.comment").setup {
        mappings = {
            comment = "gc",
            comment_line = "gcc",
            textobject = "gc",
        },
    }
end

local Surround = {
    "echasnovski/mini.surround",
    config = function()
        require("mini.surround").setup {}
    end,
}

local Cursorword = {
    "echasnovski/mini.cursorword",
    config = function()
        require("mini.cursorword").setup {}
    end,
}

local Pairs = {
    "echasnovski/mini.pairs",
    config = function()
        require("mini.pairs").setup {}
    end,
}

local Tabline = {
    "echasnovski/mini.tabline",
    config = function()
        require("mini.tabline").setup {}
    end,
}

return {
    Comment,
    Surround,
    Cursorword,
    Pairs,
    Tabline,
}
