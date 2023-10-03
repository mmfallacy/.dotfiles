# Neovim Configuration for mmfallacy
This section of the dotfiles repository contains my neovim configuration

## Plugin Manager: `lazy.nvim`
I opted to use [lazy.nvim](https://github.com/folke/lazy.nvim) instead of the now unmaintained packer.nvim as I would like to leverage the following features:
- Fast startup times
- Automatic Lazy Loading
- Manage plugins using a UI
- Automatic install if lazy is not yet installed.

## Syntax Analyzers:
Listed below are the plugins I use which could classify as syntax analyzers.
- `nvim-treesitter`: Offers syntax highlighting and parsing by acting as an interface to `tree-sitter` for Neovim.
- `vim-just`: Syntax highlighting for justfiles.
- `nvim-markdown`: Syntax highlighting for markdown files. Offers concealment for formatting and links
- `vimtex`: Syntax highlighting for tex files. Also provides commands for viewing, compiling, watching tex files. Also offers concealment.
- `typst.vim`: Syntax highlighting for typst files. Basic concealment.

## LSP Client: Builtin Neovim LSP Client
LSP Configurations are handled by [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
The following are the LSPs installed in this neovim configuration:
> Server names are shown as such <nvim-lspconfig name>:<mason-lspconfig name>
### Typescript: `tsserver:typescript-language-server`
TODO

### Lua: `lua_ls:lua-language-server`
TODO

### Rust: `rust_analyzer:rust-analyzer`
TODO

### HTML/Emmet: `emmet_ls:emmet-ls`
TODO

### Deno/Typescript: `denols:deno`
TODO

### Svelte: `svelte:svelte-language-server`
TODO

### Python: `pyright:pyright`
TODO

### CSS/Tailwind: `tailwindcss:tailwindcss-language-server`
TODO

### JavaScript Linter: `eslint:eslint-lsp`
TODO

### Java: `jdtls:jdtls`
TODO

### Typst: `typst_lsp:typst-lsp`
TODO

### Other LSP-related Plugins:
- `williamboman/mason.nvim`
- `williamboman/mason-lspconfig.nvim`
- `jose-elias-alvarez/null-ls.nvim` *(For removal)*

## Snippets and Completion
I use the following plugins for snippets and completion.
**Completion Plugin:** `nvim-cmp`
**Completion Sources:**
- `hrsh7th/cmp-buffer`
- `saadparwaiz1/cmp_luasnip`
- `hrsh7th/cmp-nvim-lsp`
- `hrsh7th/cmp-path`
**Snippet Engine:** `L3MON4D3/LuaSnip`
**Snippet Sources:**
- `rafamadriz/friendly-snippets`

## Fuzzy Finder: `telescope.nvim`
I use telescope mainly to:
- Select a git recognized file
- Live substring search across files through `ripgrep`
- Selecting files part of current opened directory
- Selecting files part of `stdpath('config')`.
- Picking from a list of treesitter symbols
- Picking form a list of buffers
- Picking from a list of TODO comments

> Ensure that `ripgrep` is installed.

## File Explorer: `nvim-tree.lua`
I mainly use `nvim-tree.lua` for navigating through the current open directory as well as creating new files, deleting or moving existing files, etc.

> Ensure that you have a Nerd Font installed.

## `echasnovski`'s Swiss Army Knife: `mini.nvim`
[`mini.nvim`](https://github.com/echasnovski/mini.nvim) is a collection of independent nvim plugins which aim to improve overall neovim experience with minimal effort.

Listed below are the modules from `mini.nvim` I use:
- `mini.comment`: Leverages `commentstring` or `treesitter` to comment/uncomment lines
- `mini.surround`: Lets you surround a selected section in quotes, parenthesis, brackets, etc.
- `mini.cursorword`: Highlights neovim "word" under cursor
- `mini.pairs`: Adds corresponding closing characters when you type `(`,`[`,`{`, etc. 
- `mini.tabline`: Topbar which displays all the opened buffers

## Miscellaneous
- `catpuccin/nvim`: Serves as my default color scheme which adheres to the common theme of this whole dotfiles repo
- `norcalli/nvim-colorizer`: Adds corresponding color highlight to hex colors and the likes.
- `folke/todo-comments`: Highlights todo comments with telescope integration
- `epwalsh/obsidian.nvim`: Plugin for writing and navigating an Obsidian vault.
- `iamcco/markdown-preview.nvim`: Previews markdown on browser with synchronized scrolling
- `TobinPalmer/pastify.nvim`: Ability to paste images in clipboard to the current document. Creates an `/assets/img` folder containing the images and pastes a link to it.
- `lukas-reineke/indent-blankline.nvim`: Indentation guides
- `AndrewRadev/tagalong.vim`: Rename closing HTML/XML tags upon editing opening tag.
- `lewis6991/gitsigns.nvim`: Adds decoration to modified lines etc.


