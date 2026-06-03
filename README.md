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

**Yatai** and **GB Coastal Greens** are custom palettes designed for this repository, derived from pixel-art wallpapers.

### Wallpapers

**Catppuccin Mocha** wallpapers were sourced from the wonderful Catppuccin community collection:
- https://github.com/zhichaoh/catppuccin-wallpapers
- Upstream: https://github.com/catppuccin/wallpapers
- License: MIT © 2021-present Catppuccin Org.

**Gruvbox Dark / Light** wallpapers were sourced from the amazing collection curated by AngelJumbo:
- https://github.com/AngelJumbo/gruvbox-wallpapers
- No license specified; community-contributed images with often-unknown original sources.

**GB Coastal Greens** wallpapers were partially sourced from this giant collection curated by dharmx:
- https://github.com/dharmx/walls
- No license specified; many of the wallpapers used come from community-contributed resources such as reddit or wallhaven.

**Yatai**, **GB Coastal Greens** wallpapers sourced individually; original artists credited where known.
