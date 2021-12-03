# dotfiles

These are mostly notes-to-self, so make of them what you will.

# preonic

Including all of the `qmk_firmware` repo in here feels clunky and ridiculous to me, so here's my kludge to flash the preonic firmware:

- Edit `./preonic/keymap.json` in the QMK Configurator, and check in updates 
- `qmk setup`
- Where FIRMWARE_DIR is wherever qmk clones the `qmk_firmware` repo:
    - `mkdir FIRMWARE_DIR/keyboards/preonic/keymaps/taylor` 
    - `cp ./preonic/config.h FIRMWARE_DIR/keyboards/preonic/keymaps/taylor/config.h`
    - `qmk compile -c ./preonic/keymap.json`
    - Copy the generated `keymap.c` to `FIRMWARE_DIR/keyboards/keymaps/taylor/keymap.c` 
    - `qmk flash -kb preonic/rev3_drop -km taylor`
    - Remove the firmware dir, if you feel like it
