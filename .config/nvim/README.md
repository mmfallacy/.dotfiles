# Neovim Configuration for mmfallacy
This section of the dotfiles repository contains my neovim configuration

## Plugin Manager: `lazy.nvim`
I opted to use [lazy.nvim](https://github.com/folke/lazy.nvim) instead of the now unmaintained packer.nvim as I would like to leverage the following features:
- Fast startup times
- Automatic Lazy Loading
- Manage plugins using a UI
- Automatic install if lazy is not yet installed.

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

## Miscellaneous
- `catpuccin/nvim`: Serves as my default color scheme which adheres to the common theme of this whole dotfiles repo
- `norcalli/nvim-colorizer`: Adds corresponding color highlight to hex colors and the likes.
- `folke/todo-comments`: Highlights todo comments with telescope integration
- `epwalsh/obsidian.nvim`: Plugin for writing and navigating an Obsidian vault.
- `iamcco/markdown-preview.nvim`: Previews markdown on browser with synchronized scrolling
- `TobinPalmer/pastify.nvim`: Ability to paste images in clipboard to the current document. Creates an `/assets/img` folder containing the images and pastes a link to it.


