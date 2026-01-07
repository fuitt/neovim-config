# Neovim Config

A customized Neovim setup with additional plugins, keymaps, and UI tweaks based on [LazyVim](https://github.com/LazyVim/LazyVim).

## Requirements

See [LazyVim Requirements](https://www.lazyvim.org/#%EF%B8%8F-requirements).

## Installation

Make a buckup of your existing Neovim configuration:

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/fuitt/neovim-config ~/.config/nvim
```

Remove the `.git` folder:

```bash
rm -rf ~/.config/nvim/.git
```

Then start Neovim:

```bash
nvim
```

## Plugins

This configuration includes several plugins that are not part of the default LazyVim distribution.

- [Mofiqul/vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [akinsho/git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)
- [NvChad/nvim-colorizer.lua](https://github.com/catgoose/nvim-colorizer.lua)
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

You can browse the full list in the `lua/plugins/` directory.

## Keymaps

This configuration introduces several custom keybindings that differ from [the default mappings provided by LazyVim](https://www.lazyvim.org/keymaps).

| Key | Description | Mode |
| --- | --- | --- |
| jj | Exit Insert Mode | i |
| \<F3\> | Toggle Relative/Absolute Line Numbers | n |
| gs | Flash Jump | n, o, x |
| gS | Flash Treesitter | n, o, x |
| gr | Flash Remote | o |
| gR | Flash Treesitter Search | o, x |
| \<leader\>gco | Git Conflict Choose Ours | n |
| \<leader\>gct | Git Conflict Choose Theirs | n |
| \<leader\>gcb | Git Conflict Choose Both | n |
| \<leader\>gc0 | Git Conflict Choose None | n |
| ]x | Git Conflict Next Conflict | n |
| [x | Git Conflict Prev Conflict | n |
| \<leader\>ft | Toggle Terminal | n, t |
| ys{motion}{char} | Add Surrounding Pairs | n |
| ds{char} | Delete Surrounding Pairs | n |
| cs{target}{replacement} | Change Surrounding Pairs | n |

Note that default flash keymaps (`s`, `S`, `r`, `R`) are disabled to avoid conflicts.
