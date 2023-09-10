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

## Version Control System: `git` and GitHub
[Git](https://github.com/wbthomason/packer.nvim) is a free and open source distributed version control system. 
### Installation
- As per my `archinstall` configuration, I have already specified `git` as an additional package and hence should come out of the box with my Arch Installation.
- Install `openssh` for generating 
- After `stow`-ing, generate a new `ed25519` ssh key in `~/.ssh/id_ed25519` through `ssh-keygen -t ed25519 -c "<email>"`.
- This then would generate a private ang public ssh key. Add this key then as authentication and signing on GitHub.

## Window Manager: `swayfx`
[Sway](https://swaywm.org/) is a tiling wayland compositor and a drop in replacement for the i3 window manager.
[SwayFX](https://swaywm.org/) is a fork of `sway` but with eye candy.
### Installation
- Install `swayfx-git`
### Configuration Dependencies
- `kanshi` for dynamic monitor configuration.
- `autotiling` for sway autotiling.
- `grim`, `slurp`, `swappy`, `wl-clipboard` for screen region captures.
- `waybar`
- `wofi` as the launcher.
- `kitty` as the terminal.
