#從網頁擷取原始碼內的指定內容
def find_all(a_str, sub):
    start = 0
    while True:
        start = a_str.find(sub, start)
        if start == -1: return
        yield start
        start += len(sub) # use start += 1 to find overlapping matches

import requests
from bs4 import BeautifulSoup
url=input('請輸入您要搜尋的網址:')
html=requests.get(url)
html.encoding='utf-8'
html_check=html.text.splitlines()
n=0
keyword=input('請輸入您要搜尋的字串:')

stringlist = list()
for row in html_check:
    r = int()
    if keyword in row:
        times = row.count("x")
        n+=times
        index = list(find_all(row, keyword))
        for i in index:
            r = i
            # 往左延伸關鍵字的景點名稱
            left = str()
            while r < len(row) - 1 and r >= 0:
                r -= 1
                if row[r] != ">" and row[r] != "\"":
                    left = row[r] + left
                else:
                    break
            # 往右延伸關鍵字的景點名稱
            r = i
            right = str()
            while r <= len(row) - 1:
                if row[r] != "<" and row[r] != "\"":
                    right = right + row[r]
                else:
                    break
                r += 1
            string = left + right
            stringlist.append(string)

# 清理景點名稱list
position = list()
# 清除字串前後空白
for i in range(len(stringlist)):
    stringlist[i] = stringlist[i].strip(" ")

# 刪除重複景點名稱字串
finalname = set(stringlist)

# 輸出
print(" ")
print('「%s」字串在網頁中找到%s筆!' %(keyword,n))
print("================================================")
if n > 0:
    print("以下提供", len(finalname),"個相關關鍵字與描述：")
    r = 1
    for i in finalname:
        print(str(r) + ".", i)
        r += 1