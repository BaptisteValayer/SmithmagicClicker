;------- SmithmagicClicker V1.0 -------;
;---- Created by Baptiste Valayer -----;
;------------- 21/04/2020 -------------;

KeyWait, Control
firstUse = 1
MergedX = 0
MergedY = 0
MsgBox,,SmithmagicClicker V1.0, Position your mouse on the combine button and press f1 to correctly configure the program.
return
F1::
    WinGetTitle, Title, ahk_exe Dofus.exe
    if WinExist(Title) {
        WinActivate
    }
    MouseGetPos, MergedX, MergedY
    if (firstUse==1) {
        MsgBox Position save
        firstUse = 0
    } else {
        MsgBox Position update
    }
return
XButton2:: 
    coordmode,caret,screen
    coordmode,mouse,screen
    Send, {Control down}
    MouseClick, left, %A_CaretX%, %A_CaretY%
    Send, {Control up}
return
XButton1::
    MouseGetPos, StartX, StartY
    MouseClick, left, MergedX, MergedY
    MouseMove, StartX, StartY, 0
return