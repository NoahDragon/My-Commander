#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
CoordMode, Mouse
SetMouseDelay, 240

^F6::toggleTheLoop()
!F6::ExitApp

toggleTheLoop()
{
    SetTimer, timerRun, 37000
}

timerRun() {
    clicky(3182, 2003)
}

clicky(x, y) {
    MouseClick,, x, y
    SoundBeep, 1500, 30
}