#!/usr/bin/env bash
# rofi script mode: quick system settings + power (text only).
# Each entry: label | command. Add or reorder lines freely.

entries=(
    "Network|kitty --class nmtui nmtui"
    "Audio|kitty --class wiremix wiremix"
    "Wallpaper|waypaper"
    "Solaar|solaar"
    "System monitor|kitty --class btop btop"
    "Update system|kitty --hold sudo pacman -Syu"
    "Hyprland config|kitty --class yazi yazi $HOME/dotfiles/hypr/.config/hypr"
    "Dotfiles|kitty --class yazi yazi $HOME/dotfiles"
    "Lock|hyprlock"
    "Suspend|systemctl suspend"
    "Log out|uwsm stop"
    "Reboot|systemctl reboot"
    "Reboot to BIOS|systemctl reboot --firmware-setup"
    "Power off|systemctl poweroff"
)

# these ask "Confirm / Cancel" first, so a stray Enter can't end your session
confirm=("Log out" "Reboot" "Reboot to BIOS" "Power off")

run() {
    for e in "${entries[@]}"; do
        IFS='|' read -r label cmd <<<"$e"
        if [ "$label" = "$1" ]; then
            setsid -f sh -c "$cmd" >/dev/null 2>&1
            return
        fi
    done
}

if [ "${ROFI_RETV:-0}" = "1" ]; then
    case "$1" in
        Cancel)      exit 0 ;;
        "Confirm: "*) run "${1#Confirm: }"; exit 0 ;;
    esac
    for c in "${confirm[@]}"; do
        if [ "$c" = "$1" ]; then
            printf '\0prompt\x1f%s?\n' "$1"
            printf '\0no-custom\x1ftrue\n'
            printf 'Confirm: %s\nCancel\n' "$1"
            exit 0
        fi
    done
    run "$1"
    exit 0
fi

# first call: list entries
printf '\0no-custom\x1ftrue\n'
for e in "${entries[@]}"; do
    printf '%s\n' "${e%%|*}"
done
