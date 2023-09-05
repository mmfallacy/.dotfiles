vim.cmd [[packadd packer.nvim]]

function plugins(use)
    use 'wbthomason/packer.nvim'

    -- Color Schemes
    use {
        {
            'projekt0n/github-nvim-theme',
            -- config = require'mmfallacy.themes.github'
        },
        {
            'navarasu/onedark.nvim',
            config = require 'mmfallacy.themes.onedark'
        },
        {
            'AlexvZyl/nordic.nvim',
            -- config = require 'mmfallacy.themes.nordic'
        }
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = require 'mmfallacy.configs.telescope'
    }
    -- Nvim-Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = require 'mmfallacy.configs.nvim-tree'
    }

    -- Syntax analyzers
    use {
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
        config = require 'mmfallacy.configs.treesitter'
    }

    use {
        'AndrewRadev/tagalong.vim',
        config = function()
            vim.cmd [[
                let g:tagalong_additional_filetypes = ['svelte']
            ]]
        end
    }

    use {
        'folke/todo-comments.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function() require 'todo-comments'.setup() end
    }

    use {
        'echasnovski/mini.comment',
        config = require 'mmfallacy.configs.comment'
    }

    use {
        'echasnovski/mini.surround',
        config = function() require 'mini.surround'.setup() end
    }

    use {
        'echasnovski/mini.cursorword',
        config = function() require 'mini.cursorword'.setup() end
    }

    use {
        'echasnovski/mini.pairs',
        config = require 'mmfallacy.configs.autopairs'
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = require 'mmfallacy.configs.indents'
    }

    use {
        'echasnovski/mini.tabline',
        config = function() require 'mini.tabline'.setup() end
    }


    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use {
        "jose-elias-alvarez/null-ls.nvim",
        requires = 'nvim-lua/plenary.nvim',
    }

    -- Snippet
    use 'rafamadriz/friendly-snippets'
    use 'L3MON4D3/LuaSnip'
    use {
        'hrsh7th/nvim-cmp',
        requires = 'L3MON4D3/LuaSnip',
        config = require 'mmfallacy.configs.cmp',
    }
    use {
        'hrsh7th/cmp-buffer',
        requires = 'hrsh7th/nvim-cmp',
    }
    use {
        'saadparwaiz1/cmp_luasnip',
        requires = 'hrsh7th/nvim-cmp',
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        requires = 'hrsh7th/nvim-cmp',
    }
    use {
        'hrsh7th/cmp-path',
        requires = 'hrsh7th/nvim-cmp',
    }

    -- Git Integration
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require 'gitsigns'.setup() end
    }


    use {
        'NoahTheDuke/vim-just',
    }
end

return require 'packer'.startup(plugins)
