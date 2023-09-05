local g = vim.g
local o = vim.o

-- Globals
g.mapleader = ' '
g.netrw_liststyle = 3

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Interface
o.mouse = 'n'
o.ruler = true
o.wrap = false
o.scrolloff = 8
o.termguicolors = true
o.linebreak = true
o.nu = true
o.relativenumber = true
o.rnu = true
o.updatetime = 50
o.lazyredraw = true
o.wrap = true

-- Indents
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true

-- Search
o.hlsearch = false
o.incsearch = true

-- Split
o.splitbelow = false
o.splitright = false
