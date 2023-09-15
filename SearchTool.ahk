MW := "https://www.merriam-webster.com/thesaurus/"
GScholar := "https://scholar.google.com/scholar?hl=en&q="

URL := GScholar

lines_to_search_each_time := 5
i := 0

FileRead, fileContents, toSearch.txt

Loop, Parse, fileContents, `n
{
    StringTrimRight, x, A_LoopField, 1 ; Remove newline character
    Run, % URL . URLEncode(x)
    Sleep, 1000 ; Sleep for 1 second (adjust as needed)
    SendInput, %x%{Enter}
    i := i + 1
    if (i = lines_to_search_each_time - 1)
    {
        MsgBox, 按下回车键以继续检视接下来的搜索结果
        Input
        i := 0
    }
}

URLEncode(str)
{
    str := StrReplace(str, "&", "%26")
    str := StrReplace(str, " ", "%20")
    str := StrReplace(str, "`r", "")
    return str
}
