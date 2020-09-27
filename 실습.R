
library(rvest)

site<- "http://media.daum.net/ranking/popular/"

text<- NULL
newstitle<-NULL
newspapername <-NULL
news_scrap=NULL

text <- read_html(site) #utf-8
text

# 뉴스 제목
nodes <- html_nodes(text, "ul.list_news2 > li > div.cont_thumb > strong > a")
newstitle <- html_text(nodes)

# 신문사명
nodes <- html_nodes(text, "ul.list_news2 > li > div.cont_thumb > strong > span")
newspapername <- html_text(nodes)


