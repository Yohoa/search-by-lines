MW := "https://www.merriam-webster.com/thesaurus/"
GScholar := "https://scholar.google.com/scholar?hl=en&q="
Google := "https://www.google.com/search?q="
; https://www.thorlabs.de/search/thorsearch.cfm?search=keyword
Thorlabs:= "https://www.thorlabs.de/search/thorsearch.cfm?search="


Gui, Add, Edit, vSearchQueries w400 h800 r5 vMyEdit
Gui, Add, Button, Default, Search Google Scholar
Gui, Add, Button, Default, Search MW
Gui, Add, Button, Default, Search Google
Gui, Add, Button, Default, Search Thorlabs
; Gui, Add, Button, gClearInput, Clear Input
Gui, Show, Center, Raphael's Search Tool
return

ButtonSearchGoogle:
Gui, Submit
Loop, Parse, MyEdit, `n
{
    StringTrimRight, x, A_LoopField, 0 ; Remove newline character
    Run, % Google . URLEncode(x)
    Sleep, 1000 ; Sleep for 1 second (adjust as needed)
    SendInput, %x%{Enter}
}
ExitApp
return


ButtonSearchGoogleScholar:
Gui, Submit
Loop, Parse, MyEdit, `n
{
    StringTrimRight, x, A_LoopField, 0 ; Remove newline character
    Run, % GScholar . URLEncode(x)
    Sleep, 1000 ; Sleep for 1 second (adjust as needed)
    SendInput, %x%{Enter}
}
ExitApp
return

ButtonSearchMW:
Gui, Submit
Loop, Parse, MyEdit, `n
{
    StringTrimRight, x, A_LoopField, 0 ; Remove newline character
    Run, % MW . URLEncode(x)
    Sleep, 1000 ; Sleep for 1 second (adjust as needed)
    SendInput, %x%{Enter}
}
ExitApp
return

ButtonSearchThorlabs:
Gui, Submit
Loop, Parse, MyEdit, `n
{
    StringTrimRight, x, A_LoopField, 0 ; Remove newline character
    Run, % Thorlabs . URLEncode(x)
    Sleep, 1000 ; Sleep for 1 second (adjust as needed)
    SendInput, %x%{Enter}
}


GuiClose:
ExitApp

URLEncode(str)
{
    str := StrReplace(str, "&", "%26")
    str := StrReplace(str, " ", "%20")
    ; str := StrReplace(str, "`r", "")
    return str
}
