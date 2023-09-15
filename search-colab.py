'''
假如你想在Colab里面运行，那么你需要用这个脚本。
'''

import webbrowser # 在Colab里面不可用。
import urllib.parse
from IPython.display import Javascript
def open_web(url):
    
    display(Javascript('window.open("{url}");'.format(url=url)))
# open_web()


f = open("toSearch.txt", "r")
i = 0

MW = "https://www.merriam-webster.com/thesaurus/"
GScholar = "https://scholar.google.com/scholar?hl=en&q="

URL = GScholar

lines_to_search_each_time = 5

for x in f:
    
    open_web(URL + urllib.parse.quote( x))
    print(x)
    i = i + 1
    if (i == lines_to_search_each_time-1):
        print("按下回车键以继续检视接下来的搜索结果")
        input()
        i = 0
