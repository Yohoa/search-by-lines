import webbrowser
import urllib.parse
f = open("toSearch.txt", "r")
i = 0

MW = "https://www.merriam-webster.com/thesaurus/"
GScholar = "https://scholar.google.com/scholar?hl=en&q="
Woorden = "https://www.woorden.org/woord/"

URL = Woorden

lines_to_search_each_time = 5

for x in f:
    webbrowser.open( URL + urllib.parse.quote( x))
    print(x)
    i = i + 1
    if (i == lines_to_search_each_time-1):
        print("按下回车键以继续检视接下来的搜索结果")
        input()
        i = 0
