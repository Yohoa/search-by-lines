# -*- coding: utf-8 -*-
"""
Created on Fri Sep 15 17:13:47 2023

@author: zhiyang
"""

import tkinter as tk
import webbrowser

def url_encode(text):
    text = text.replace("&", "%26")
    text = text.replace(" ", "%20")
    return text

def search_google():
    queries = my_edit.get("1.0", "end").strip().split("\n")
    for query in queries:
        query = url_encode(query)
        url = f"https://www.google.com/search?q={query}"
        webbrowser.open(url)
        root.after(1000)

def search_google_scholar():
    queries = my_edit.get("1.0", "end").strip().split("\n")
    for query in queries:
        query = url_encode(query)
        url = f"https://scholar.google.com/scholar?hl=en&q={query}"
        webbrowser.open(url)
        root.after(1000)

def search_merriam_webster():
    queries = my_edit.get("1.0", "end").strip().split("\n")
    for query in queries:
        query = url_encode(query)
        url = f"https://www.merriam-webster.com/thesaurus/{query}"
        webbrowser.open(url)
        root.after(1000)

root = tk.Tk()
root.title("Raphael's Google Scholar Search Tool")

my_edit = tk.Text(root, width=80, height=20)
my_edit.pack()

search_google_button = tk.Button(root, text="Search Google", command=search_google)
search_google_scholar_button = tk.Button(root, text="Search Google Scholar", command=search_google_scholar)
search_mw_button = tk.Button(root, text="Search Merriam-Webster", command=search_merriam_webster)

search_google_button.pack()
search_google_scholar_button.pack()
search_mw_button.pack()

root.mainloop()
