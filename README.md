# dotfiles

Personal config files for CachyOS + Hyprland setup. Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each top-level directory is a Stow package mirroring `$HOME` paths.

- `fastfetch/` → `~/.config/fastfetch/` (Persona 5 Royal themed system info)

## Usage

Clone and stow:

```bash
git clone git@github.com:apathized/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow fastfetch
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
