import webbrowser
f = open("toSearch.txt", "r")
i = 0

MW = "https://www.merriam-webster.com/thesaurus/"
GScholar = "https://scholar.google.com/scholar?hl=en&q="

URL = GScholar

for x in f:
    webbrowser.open( URL + x)
    print(x)
    i = i + 1
    if (i == 20-1):
        print("按下回车键以继续检视接下来的二十个单词")
        input()
        i = 0
