#!/usr/bin/env bash
# rofi script mode: clipboard history from cliphist.
# Pick an entry -> it's copied back to the clipboard (paste with Ctrl+V).

# picked something (ROFI_RETV=1): the full cliphist line rides along in ROFI_INFO
if [ "${ROFI_RETV:-0}" = "1" ] && [ -n "$ROFI_INFO" ]; then
    printf '%s' "$ROFI_INFO" | cliphist decode | wl-copy >/dev/null 2>&1
    exit 0
fi

# first call: list history, showing just the text (not cliphist's id column)
printf '\0no-custom\x1ftrue\n'
cliphist list | while IFS= read -r line; do
    text="${line#*$'\t'}"
    printf '%s\0info\x1f%s\n' "$text" "$line"
done
