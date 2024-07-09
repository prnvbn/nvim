# nvim

This contains my neovim config. To use this config, run the following commands:

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# clone the repo
git clone https://github.com/prnvbn/nvim  ~/.config/nvim
```

After opening neovim check that everything is working fine and dandy via `:checkhealth`.

## "Known Issues"

Known *issues* are mostly dependencies that need to be installed.

- **ripgrep**: needs to be installed for telescope live greps- [installation docs](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)  
- **fd**: needs to be installed for telescope - [installation docs](https://github.com/sharkdp/fd?tab=readme-ov-file#installation) 
- **luarocks**: needs to be installed for lazy plugin manager - [wiki](https://github.com/luarocks/luarocks/wiki) - either use `wget` or the `-L` flag when installing

## Choices

This is mostly for me to justify my choices to my future self

- Lazy.nvim vs packer.nvim: lazy seems a lot cleaner once you get used to how to configure stuff properly. Also, the author of packer is using lazy now ([src](https://github.com/wbthomason/dotfiles/blob/main/dot_config/nvim/lua/plugins.lua) )
- file tree/explorer: I used neo tree for no good reason tbh, I do wanna try out maybe [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) , [oil](https://github.com/stevearc/oil.nvim) and strauight netrw once.

## Improvements/TODO

I hope one day my config will be stable... until then, I want to address the following

- Add pretty rulers. The default colocolumn is ugly, I want it to be a lot nicer
- Improve the LSP setup. Currently, I need to touch the none-ls config and the nvim-lspconfig config.

 
