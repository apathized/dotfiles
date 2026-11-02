#!/usr/bin/env bash
# rofi script mode: quick system settings + power.
# Simple one-color Nerd Font icons, so they take the text color (and flip on the selected row).
# Each entry: icon | label | command. Icons are written as codepoints so copy/paste can't mangle them.

LC_CTYPE=C.UTF-8   # needed to turn the codepoints into characters, whatever the session locale

entries=(
    $'\U000F05A9|Network|kitty --class nmtui nmtui'
    $'\U000F057E|Audio|kitty --class wiremix wiremix'
    $'\U000F02E9|Wallpaper|waypaper'
    $'\U000F037D|Solaar|solaar'
    $'\U000F0EE0|System monitor|kitty --class btop btop'
    $'\U000F06B0|Update system|kitty --hold sudo pacman -Syu'
    $'\U000F0493|Hyprland config|kitty --class yazi yazi ~/dotfiles/hypr/.config/hypr'
    $'\U000F024B|Dotfiles|kitty --class yazi yazi ~/dotfiles'
    $'\U000F033E|Lock|hyprlock'
    $'\U000F0904|Suspend|systemctl suspend'
    $'\U000F0343|Log out|uwsm stop'
    $'\U000F0709|Reboot|systemctl reboot'
    $'\U000F061A|Reboot to BIOS|systemctl reboot --firmware-setup'
    $'\U000F0425|Power off|systemctl poweroff'
)

# these ask "Confirm / Cancel" first, so a stray Enter can't end your session
confirm=("Log out" "Reboot" "Reboot to BIOS" "Power off")

run() {
    for e in "${entries[@]}"; do
        IFS='|' read -r icon label cmd <<<"$e"
        if [ "$label" = "$1" ]; then
            setsid -f sh -c "$cmd" >/dev/null 2>&1
            return
        fi
    done
}

if [ "${ROFI_RETV:-0}" = "1" ]; then
    sel="${1#*  }"   # drop the icon and its two spaces
    case "$sel" in
        Cancel)      exit 0 ;;
        "Confirm: "*) run "${sel#Confirm: }"; exit 0 ;;
    esac
    for c in "${confirm[@]}"; do
        if [ "$c" = "$sel" ]; then
            printf '\0prompt\x1f%s?\n' "$sel"
            printf '\0no-custom\x1ftrue\n'
            printf 'Confirm: %s\nCancel\n' "$sel"
            exit 0
        fi
    done
    run "$sel"
    exit 0
fi

# first call: list entries
printf '\0no-custom\x1ftrue\n'
for e in "${entries[@]}"; do
    IFS='|' read -r icon label cmd <<<"$e"
    printf '%s  %s\n' "$icon" "$label"
done
