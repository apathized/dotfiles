#!/usr/bin/env bash
# rofi script mode: cheat sheet of every Hyprland bind that has a description.
# Read-only: picking a row just closes rofi.

[ "${ROFI_RETV:-0}" = "0" ] || exit 0

printf '\0no-custom\x1ftrue\n'
hyprctl binds -j | jq -r '
  .[]
  | select((.description // "") != "")
  | ( [ (if ((.modmask / 64 | floor) % 2) == 1 then "SUPER" else empty end),
        (if ((.modmask / 4  | floor) % 2) == 1 then "CTRL"  else empty end),
        (if ((.modmask / 8  | floor) % 2) == 1 then "ALT"   else empty end),
        (if (.modmask % 2) == 1 then "SHIFT" else empty end),
        .key ] | join(" + ") ) as $combo
  | "\($combo)\t\(.description)"' \
| column -t -s $'\t'
