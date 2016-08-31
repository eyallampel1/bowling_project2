#include-once
#include "NamedColors.au3"

; Toned background colors            Red       Green     Blue      Cyan      Purple    Yellow
Global Const $aTonedBackColors[] = [ 0xFFCCCC, 0xCCFFCC, 0xCCCCFF, 0xCCFFFF, 0xFFCCFF, 0xFFFFCC ]

; Fore colors                   Red       Green     Blue      Yellow    Purple    Cyan
Global Const $aForeColors[] = [ 0xFF0000, 0x00FF00, 0x0000FF, 0xFFFF00, 0xFF00FF, 0x00FFFF ]

; Dark fore colors
Global Const $aDarkForeColors[] = [ $__g_iBlack, $__g_iDarkGreen, $__g_iPurple, $__g_iIndigo, $__g_iNavy, $__g_iTeal, $__g_iGreen, $__g_iMaroon ]

; Default back colors for selected listview items
Global Const $__g_iHighlight = ColorConvert( _WinAPI_GetSysColor( $COLOR_HIGHLIGHT ) ) ; When listview has focus
Global Const $__g_iBtnFace   = ColorConvert( _WinAPI_GetSysColor( $COLOR_BTNFACE ) )   ; When listview has not focus

; RGB to BGR or BGR to RGB
Func ColorConvert( $iColor )
	Return BitOR( BitAND( $iColor, 0x00FF00 ), BitShift( BitAND( $iColor, 0x0000FF ), -16 ), BitShift( BitAND( $iColor, 0xFF0000 ), 16 ) )
EndFunc
