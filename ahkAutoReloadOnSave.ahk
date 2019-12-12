; From: https://www.reddit.com/r/AutoHotkey/comments/39gjam/what_are_your_favorite_ahk_tricks/
; Works only when the script name is the beginning of the text editor, like: s.ahk - notepad OR s.ahk (~/s.ahk) VIM

GroupAdd, ThisScript, %A_ScriptName%		; Add any window containing this script's name to the group ThisScript
											; This is used in the Auto-reload on save function

; ---------------------------------
; Auto-reload on save
; ---------------------------------

; Reloads script if active window is the script editor
; Reloads on Ctrl-S in the editor window

#IfWinActive ahk_group ThisScript						; Only run if met
~^s::													; Otherwise, ignore hotkey
	TrayTip, Reloading updated script, %A_ScriptName%
	SetTimer, HideTrayTip, -2000
	Sleep, 2000
	Reload
return
#IfWinActive

; Win 10
HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}

; HideTrayTip(){
;   TrayTip
;}