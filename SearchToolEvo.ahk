MW := "https://www.merriam-webster.com/thesaurus/"
GScholar := "https://scholar.google.com/scholar?hl=en&q="

URL := GScholar

Gui, Add, Edit, vSearchQueries w400 h200 r5 vMyEdit
Gui, Add, Button, Default, Start Search
Gui, Show, Center, Search Tool
return

ButtonStartSearch:
Gui, Submit
Loop, Parse, MyEdit, `n
{
    StringTrimRight, x, A_LoopField, 1 ; Remove newline character
    Run, % URL . URLEncode(x)
    Sleep, 1000 ; Sleep for 1 second (adjust as needed)
    SendInput, %x%{Enter}
}
return

; ExitApp
; GuiClose:

URLEncode(str)
{
    str := StrReplace(str, "&", "%26")
    str := StrReplace(str, " ", "%20")
    str := StrReplace(str, "`r", "")
    return str
}

