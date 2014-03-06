import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ICCCMFocus
import XMonad.Hooks.SetWMName
import XMonad.Util.EZConfig

myNormalBorderColor  = "#7a7a7a"
myFocusedBorderColor = "#000000"

-- don't forget to follow http://youtrack.jetbrains.com/issue/IDEA-101072

main = xmonad $ defaultConfig {
	      terminal = "urxvt",
              startupHook = setWMName "LG3D",
              logHook = takeTopFocus,
              normalBorderColor  = myNormalBorderColor,
              focusedBorderColor = myFocusedBorderColor
	    } `additionalKeys` [ 
          ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]