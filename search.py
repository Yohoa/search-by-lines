import webbrowser
f = open("List 6.txt", "r")
i = 0
for x in f:
    webbrowser.open("https://www.merriam-webster.com/thesaurus/" + x)
    print(x)
    i = i + 1
    if (i == 20-1):
        print("按下回车键以继续检视接下来的二十个单词")
        input()
        i = 0
