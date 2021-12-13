####################################################

# import data as the name "year"
year <- read.csv(file.choose(), encoding="UTF-8")

# rename the first coloumn
names(year)[1] <- "year"

# import library to draw figures
library(ggplot2)

# 字體
windowsFonts(A=windowsFont("微軟正黑體"))

# Basic scatter plot


# 歷年抗憂鬱藥物使用率
ggplot(year, aes(x=year, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    scale_x_continuous(limits = c(94, 108)) +
    
    xlab("民國年") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("歷年抗憂鬱藥物使用率") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(year$year, year$抗憂鬱藥物使用率)


ggplot(year, aes(x=總人口數, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    scale_x_continuous(limits = c(22770383, 23603121)) +
    
    xlab("總人口數") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與總人口數") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$總人口數, year$抗憂鬱藥物使用率)



ggplot(na.omit(year), aes(x=性別比, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 

    xlab("性別比") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與性別比") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$性別比, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=失業率, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("失業率(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與失業率") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$失業率, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=每人每月薪資, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("每人每月薪資(元)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與每人每月薪資") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$每人每月薪資, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=有偶人口離婚率_男.千分之一., y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("有偶人口離婚率_男(千分率)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與有偶人口離婚率_男") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 15,family = "A")
    )

cor.test(year$有偶人口離婚率_男, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=有偶人口離婚率_女.千分之一., y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("有偶人口離婚率_女(千分率)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與有偶人口離婚率_女") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$有偶人口離婚率_女, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=單人, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("家庭型態_單人(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與家庭型態_單人") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$單人, year$抗憂鬱藥物使用率)


ggplot(na.omit(year), aes(x=夫婦, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("家庭型態_夫婦(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與家庭型態_夫婦") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$夫婦, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=核心, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("家庭型態_核心(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與家庭型態_核心") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$核心, year$抗憂鬱藥物使用率)

ggplot(na.omit(year), aes(x=祖孫, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("家庭型態_祖孫(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與家庭型態_祖孫") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$祖孫, year$抗憂鬱藥物使用率)


ggplot(na.omit(year), aes(x=三代, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("家庭型態_三代(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與家庭型態_三代") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$三代, year$抗憂鬱藥物使用率)


ggplot(na.omit(year), aes(x=總工時, y=抗憂鬱藥物使用率 * 100)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("年總工時(小時)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與年總工時") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )

cor.test(year$總工時, year$抗憂鬱藥物使用率)

# 共線性
# 只計算我要的變項
myvars <- c("year", "總人口數", "性別比", "失業率_男", "失業率_女", "每人每月薪資", "有偶人口離婚率_男.千分之一.", "有偶人口離婚率_女.千分之一.", "單人", "核心", "祖孫", "三代", "總公時", "抗憂鬱藥物使用率")
year_cut <- year[myvars]

res <- cor(na.omit(year_cut))
round(res, 2)

names(year)


###########################################
# import data as the name "city"
city <- read.csv(file.choose(), fileEncoding='big5')


###
ggplot(na.omit(city), aes(x=reorder(縣市108年, 抗憂鬱藥物使用率, sum), y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("縣市") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("各縣市抗憂鬱藥物使用率") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A", angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    )


ggplot(na.omit(city), aes(x=人口數, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("縣市人口數") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與縣市人口數") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A",angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$人口數, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=扶養比, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("縣市扶養比(%)") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與扶養比") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$扶養比, city$抗憂鬱藥物使用率)



ggplot(na.omit(city), aes(x=性別比, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("性別比") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與性別比") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$性別比, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=人口密度, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("人口密度") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與人口密度") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$人口密度, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=粗離婚率, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("縣市粗離婚率") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與粗離婚率") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$粗離婚率, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=失業率, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("縣市失業率") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與失業率") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$失業率, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=平均每戶全年經常性支出, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("平均每戶全年經常性支出") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與平均每戶全年經常性支出") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A",angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$平均每戶全年經常性支出, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=平均每戶全年經常性收入, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("平均每戶全年經常性收入") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與平均每戶全年經常性收入") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 10,family = "A",angle=45),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$平均每戶全年經常性收入, city$抗憂鬱藥物使用率)



ggplot(na.omit(city), aes(x=平均薪資, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("平均薪資") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與平均薪資") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$平均薪資, city$抗憂鬱藥物使用率)


ggplot(na.omit(city), aes(x=平均薪資, y=抗憂鬱藥物使用率)) + 
    geom_point(size=3, color="steelblue") +
    geom_smooth(method="lm", se=TRUE, fullrange=FALSE, level=0.95, color="steelblue") + 
    
    xlab("平均薪資") + ylab("抗憂鬱藥物使用率(%)") + ggtitle("抗憂鬱藥物使用率與平均薪資") +
    
    theme(axis.text.x = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.text.y = element_text(vjust = 0.5, size = 20,family = "A"),
          axis.title = element_text(hjust = 0.5, size = 20,family = "A"),
          plot.title = element_text(hjust = 0.5, size = 20,family = "A"), # 將title置中
          legend.text = element_text(size = 20,family = "A"),
          legend.title = element_text(size = 20,family = "A")
    ) 

cor.test(city$平均薪資, city$抗憂鬱藥物使用率)



names(city)


###########################################################
year_model <- read.csv(file.choose(), encoding = "UTF-8")
names(year_model)
model <- lm(抗憂鬱藥物使用率~有偶人口離婚率_男.千分之一., data=year_model)
model <- lm(抗憂鬱藥物使用率~有偶人口離婚率_女.千分之一., data=year_model)
model <- lm(抗憂鬱藥物使用率~單人+夫婦, data=year_model)
model <- lm(抗憂鬱藥物使用率~單親, data=year_model)


model <- lm(scale(抗憂鬱藥物使用率)~scale(單人)+scale(夫婦)+scale(單親), data=year_model)


summary(model)



###########################################################




model <- lm(scale(抗憂鬱藥物使用率)~scale(扶養比)+scale(性別比), data=city)


summary(model)
