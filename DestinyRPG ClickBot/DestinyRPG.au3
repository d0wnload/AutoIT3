#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=on.ico
#AutoIt3Wrapper_Outfile_x64=DestinyRPG.exe
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Comment=This ClickBot is made by ka0nashi. <3
#AutoIt3Wrapper_Res_Description=DestinyRPG
#AutoIt3Wrapper_Res_Fileversion=1.3.3.7
#AutoIt3Wrapper_Res_Language=1031
#AutoIt3Wrapper_Res_Icon_Add=C:\Users\ka0nashi\AutoIT3\DestinyRPG ClickBot\off.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Misc.au3>

;~ Allow only one instance
_Singleton("DestinyBot", 0)

;~ Switch icons
TraySetIcon(@ScriptFullPath, 201)

;~ No TrayMenu
Opt("TrayMenuMode", 1)

;~ hotkeys
HotKeySet("y", "start")
HotKeySet("x", "stop")
HotKeySet("c", "end")
HotKeySet("v", "about")

;~ Variables
Local $version = "DestinyRPG ClickBot v0.1 Alpha 'CreamPie' by ka0nashi"
Local $active = False
Local $stop = True
Local $shown = False

;~ set ToolTip
TraySetToolTip($version)

;~ Main
While True
	While $stop = False
		MouseClick("main")
		Sleep(250)
	WEnd
	TraySetIcon(@ScriptFullPath, 201)
	$active = False
WEnd

;~ Functions
Func start()
	$stop = False
	If $active = False Then
		$active = True
		TraySetIcon()
	EndIf
EndFunc   ;==>start

Func stop()
	$stop = True
EndFunc   ;==>stop

Func end()
	Exit
EndFunc   ;==>end

Func about()
	If Not $shown Then
		$shown = True
		MsgBox(64, $version, "I won't click on the spot while a simple script can do the same.", 30)
		$shown = False
	EndIf
EndFunc   ;==>about
