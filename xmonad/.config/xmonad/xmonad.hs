import XMonad
import XMonad.Util.EZConfig

myKeys = 
  [ ("M-<Return>", spawn "kitty"),
    ("M-d", spawn "dmenu_run"),
    ("M-w", kill)
  ]

main = xmonad $ def
  { modMask = mod4Mask,
    terminal = "kitty"
  }
  `additionalKeysP` myKeys
