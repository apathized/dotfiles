# Personal Dotfiles

Originally based on HyDE with my own keybindings and config adjustments. Heavily recommend for starting on Hyprland!

https://hydeproject.pages.dev/

## Dependencies

- hyprland
- awww
- rofi
- waybar
- fastfetch

## Stowing and creating symlinks

Download stow:
```bash
sudo pacman -S stow
```

Access the dotfiles:
```bash
git clone git@github.com:apathized/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

Stow a specific package:
```bash
stow <package-name>
```

Unstow (remove symlinks):
```bash
stow -D <package-name>
```

Restow (after structural changes):
```bash
stow -R <package-name>
```

## Acknowledgements

This repo was made possible thanks to the incredible community works for wallpapers, color palettes, and various theme assets.

If you are the original creator of any included images and would like any attributions added, adjusted, or the work removed, please open an issue or email me at ryanmcnichol@protonmail.com.

### Color palettes

**Gruvbox** (dark & light) by Pavel Pertsev
- https://github.com/morhetz/gruvbox
- Color values used in this repo are sourced directly from the canonical `colors/gruvbox.vim`

**Catppuccin Mocha** by the Catppuccin community
- https://github.com/catppuccin/catppuccin
- License: MIT © 2021-present Catppuccin Org

**Tokyo Night** by enkia
- https://github.com/enkia/tokyo-night-vscode-theme

**Yatai** and **GB Coastal Greens** are custom palettes designed for this repository, derived from pixel-art wallpapers.

### Wallpapers

**Catppuccin Mocha** wallpapers sourced from the Catppuccin community collection
- https://github.com/zhichaoh/catppuccin-wallpapers
- Upstream: https://github.com/catppuccin/wallpapers
- License: MIT © 2021-present Catppuccin Org

**Gruvbox Dark / Light** wallpapers sourced from the collection curated by AngelJumbo
- https://github.com/AngelJumbo/gruvbox-wallpapers
- No license specified; community-contributed images with often-unknown original sources

**Yatai**, **GB Coastal Greens**, **Tokyo Night** wallpapers sourced individually; original artists credited where known.
