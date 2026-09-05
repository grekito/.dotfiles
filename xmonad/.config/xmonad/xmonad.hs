import XMonad
import XMonad.StackSet qualified as W
import XMonad.Util.EZConfig

myKeys = 
  -- Launch applications
  [ ("M-<Return>", spawn "kitty"),
    ("M-d", spawn "rofi -show drun"),
    ("M-r", spawn "dmenu_run"),
  -- Window management
    ("M-w", kill),
    ("M-j", windows W.focusDown),
    ("M-k", windows W.focusUp)
  ]

main = xmonad $ def
  { modMask = mod4Mask,
    terminal = "kitty"
  }
  `additionalKeysP` myKeys
