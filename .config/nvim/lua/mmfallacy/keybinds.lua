local noremap = { noremap = true }
local silent_noremap = { noremap = true, silent = true }
local map = vim.keymap.set

-- Normal Remaps
map("n", "<leader>pv", vim.cmd.Ex)
map({ "n", "v", "c", "i" }, "<C-c>", "<Esc>")
-- map("n", "<C-a>", "ggVG")

-- Buffer Remaps (ful1e5)
map("n", "<leader>]", vim.cmd.bnext)
map("n", "<leader>[", vim.cmd.bprev)
map("n", "<leader>bd", ":confirm bd | bp<CR>", silent_noremap)

-- NvimTree Remaps
map("n", "<leader>N", ":NvimTreeToggle<CR>", noremap)
map("n", "<leader>n", ":NvimTreeToggleFocus<CR>", noremap)

-- Line Transforms using Alt (ful1e5)

map("n", "<A-Down>", ":m .+1<CR>==")
map("n", "<A-Up>", ":m .-2<CR>==")
map("v", "<A-Down>", ":m '>+1<CR>gv=gv")
map("v", "<A-Up>", ":m '<-2<CR>gv=gv")
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Sync Arrow Keys to HJKL
map({ "n", "v" }, "<Left>", "<nop>")
map({ "n", "v" }, "<Right>", "<nop>")
map({ "n" }, "K", "<nop>")

-- Save (noop when not modified)
map({ "n", "v", "i" }, "<C-s>", "<cmd>update<CR>", silent_noremap)

-- Select whole line except indents and newline
map({ "n" }, "<leader>V", "^vg_", silent_noremap)
