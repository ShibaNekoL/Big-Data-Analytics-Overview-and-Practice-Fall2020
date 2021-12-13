#網路擷取圖片程式
import requests,os,urllib
from bs4 import BeautifulSoup
url='https://www.taiwan.net.tw/m1.aspx?sNo=0001090' # 網址如先前所附，可修改
html=requests.get(url)
html.encoding="utf-8"
bs=BeautifulSoup(html.text,'html.parser')
pics_dir="pics"
if not os.path.exists(pics_dir):
    os.mkdir(pics_dir) #在工作目錄下建立目錄pics來儲存圖片
all_links=bs.find_all('img') #用串列取得所有<img>標籤的內容
for link in all_links:
    src=link.get('src') #讀取src屬性值的內容
    attrs=[src] #將src字串轉成串列attrs
    for attr in attrs:
        if attr!=None and('.jpg'in attr or'.png'in attr):#讀取.jpg或.png檔
            full_path = attr #設定圖檔完整路徑

            # 若圖檔網址少了網頁網址，則自行補上，以便下載
            if full_path[0] == "/":
                full_path = 'https://www.taiwan.net.tw' + full_path

            file_n=full_path.split('/')[-1] #從網址的最右側取得圖檔的名稱
            # 若副檔名後有閒雜資訊"&sizetype=2" 則刪除
            file_n = file_n.strip("&sizetype=2")

            print('================')
            print('圖檔完整路徑：',full_path)            
            try:  #儲存圖片程式區塊
                image = urllib.request.urlopen(full_path)
                f = open(os.path.join(pics_dir,file_n),'wb')
                f.write(image.read())
                print('下載成功：%s' %(file_n))
                f.close()
            except: #無法儲存圖片程式區塊
                print("無法下載：%s" %(file_n))
