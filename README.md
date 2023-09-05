# .dotfiles
Arch Linux setup 2023

# Packages
## Editor: `neovim`
Neovim is a hyperextensible Vim-based text editor. I currently use [packer.nvim](https://github.com/wbthomason/packer.nvim) as my plugin/package manager for Neovim.
### Installation
- After `stow`-ing the root repository, install packer through the AUR through `paru -S nvim-packer-git`.
- Run neovim and execute `:PackerSync`
- Since I use the Mason plugin for installing new LSPs, we need to install `npm` and `unzip` as well (`paru -S npm unzip`).
- Reopen neovim and wait for the LSPs to be reinstalled.

### TODO:
> ** Tasks marked with * are still tentative. The list below is also ordered based on priority**
- [ ] Migrate `packer.nvim` to `lazy.nvim` for plugin management as Packer is now unmaintained. Lazy.nvim also features package lazy loading which will help my neovim's startup time. 
- [ ] Migrate out of `null-ls`
- [ ] * Migrate out of `mason` and use a bash script instead for installing LSPs

