export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0

export GTK_MODULES="appmenu-gtk-module"


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
