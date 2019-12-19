; Capslock::LCtrl ; make Caps Lock the control button

; From https://www.dannyguo.com/blog/remap-caps-lock-to-escape-and-control/
; Remap Caps Lock to ESC and Ctrl
; Tap -> ESC
; Hold -> Ctrl
*CapsLock::
    Send {Blind}{Ctrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    ; Modify the threshold time (in milliseconds) as necessary
    If ((A_TickCount-cDown) < 150)
        Send {Blind}{Ctrl Up}{Esc}
    Else
        Send {Blind}{Ctrl Up}
Return
