numlockx &

session=${1:-i3}

case $session in
  awesome         ) exec awesome;;
  bspwm           ) exec bspwm;;
  cinnamon        ) exec cinnamon-session;;
  deepin          ) exec startdde;;
  dwm             ) exec dwm;;
  enlightenment   ) exec enlightenment_start;;
  fluxbox         ) exec startfluxbox;;
  gnome           ) exec gnome-session;;
  gnome-classic   ) exec gnome-session --session=gnome-classic;;
  i3|i3wm         ) exec i3;;
  jwm             ) exec jwm;;
  kde             ) exec startkde;;
  lxqt            ) exec startlxqt;;
  openbox         ) exec openbox-session;;
  mate            ) exec mate-session;;
  pantheon        ) exec gnome-session --session=pantheon;;
  twm             ) exec twm;;
  xfce|xfce4      ) exec startxfce4;;
  xmonad          ) exec xmonad;;
  xterm           ) exec xterm;;
  *               ) exec $1;;
esac

