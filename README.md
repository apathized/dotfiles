
# Personal Dotfiles

Originally based on HyDE with my own Keybindings and config adjustments, heavily recommend for starting on Hyprland!

https://hydeproject.pages.dev/

### Stowing and creating symlinks

Download stow:
```bash
sudo pacman -S stow
```

Access the Dotfiles:
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
