#從網頁擷取原始碼內容
import requests
url='http://www.edu.tw/'
html=requests.get(url)
html.encoding='utf-8'
print(html.text)

