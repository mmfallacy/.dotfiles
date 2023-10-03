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
