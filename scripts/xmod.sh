#! /bin/bash

# make caps => ctrl
# and <shift-caps> => caps
xmodmap -e "clear lock"
xmodmap -e "clear control"
xmodmap -e "add control = Caps_Lock Control_L Control_R"
xmodmap -e "keycode 66 = Control_L Caps_Lock NoSymbol NoSymbol"

# make <tab-h/j/k/l> => left/down/up/right
# need xcape
spare_modifier="Mode_switch"

xmodmap -e "keycode 23 = $spare_modifier"
xmodmap -e "keycode 43 = h H Left Left"
xmodmap -e "keycode 44 = j J Down Down"
xmodmap -e "keycode 45 = k K Up Up"
xmodmap -e "keycode 46 = l L Right Right"

xmodmap -e "keycode any = Tab" # set a keysym for xcape

/home/merak/scripts/xcape/xcape -e "$spare_modifier=Tab"
# However, this has sveral limitations: the key will not work as ordinart until it is relased, and in particular, it may act as a modifier unintentionaly if you type too fast.
