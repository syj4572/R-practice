
# OPEN API 실습 1

site <- "https://openapi.naver.com/v1/search/blog.xml"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"

query <- URLencode(iconv("맛집”","euc-kr","UTF-8"))
url <- paste0(site, "?query=", query, "&display=100")

naverdoc <- GET(url, add_headers("Content_Type" = "application/xml",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))

naverdoc2 <- htmlParse(naverdoc, encoding="UTF-8")
blog_text <- xpathSApply(naverdoc2, "//item/description", xmlValue)
blog_text <- gsub("</?b>", "", blog_text)
View(blog_text)
write.csv(blog_text, "naverblog.txt")


# OPEN API 실습 2

appname <- "edu_data_collection"
api_key <- "RvnZeIl8ra88reu8fm23m0bST"
api_secret <- "wTRylK94GK2KmhZUnqXonDaIszwAsS6VPvpSsIo6EX5GQLtzQo"
access_token <- "959614462004117506-dkWyZaO8Bz3ZXh73rspWfc1sQz0EnDU"
access_token_secret <- "rxDWfg7uz1yXMTDwijz0x90yWhDAnmOM15R6IgC8kmtTe"
twitter_token <- create_token(
  app = appname,
  consumer_key = api_key,
  consumer_secret = api_secret,
  access_token = access_token,
  access_secret = access_token_secret)


key <- "코로나"
key <- enc2utf8(key)
result <- search_tweets(key, n=100, token = twitter_token)
str(result)
result$retweet_text
tweet_text <- result$retweet_text
tweet_text <- gsub("[[:punct:][:upper:][:lower:][<.*>]]", "", tweet_text)   
tweet_text <- content[!is.na(content)]
View(tweet_text)
write.csv(tweet_text, "twitter.txt")


# OPEN API 실습 3

API_key  <- "%2BjzsSyNtwmcqxUsGnflvs3rW2oceFvhHR8AFkM3ao%2Fw50hwHXgGyPVutXw04uAXvrkoWgkoScvvhlH7jgD4%2FRQ%3D%3D"
bus_No <- "360"
url <- paste("http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?ServiceKey=", API_key, "&strSrch=", bus_No, sep="")
bus_doc <- xmlParse(url, encoding="UTF-8")
top <- xmlRoot(bus_doc)
top
bus_df <- xmlToDataFrame(getNodeSet(bus_doc, "//itemList"))
bus_df
str(bus_df)
View(bus_df)

busRouteId <- bus_df$busRouteId[1]
busRoutelength <- bus_df$length[1]
busRoutestStation <- bus_df$stStationNm[1]
busRouteedStation <- bus_df$edStationNm[1]
busRouteterm <- bus_df$term[1]

cat ("[ 360번 버스정보 ]")
cat ("노선 ID :",busRouteId )
cat ("노선길이 :",busRoutelength,"(Km)" )
cat ("기점 :",busRoutestStation )
cat ("종점 :",busRouteedStation )
cat ("배차간격 :",busRouteterm,"(분)" )


# OPEN API 실습 4

library(jsonlite)

site<- "https://openapi.naver.com/v1/search/news.json"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"
query <- URLencode(iconv("빅데이터","euc-kr","UTF-8"))
url <- paste0(site, "?query=", query, "&display=100")
bigdata_doc <- GET(url, add_headers("Content_Type" = "application/json",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))


json_data <- content(bigdata_doc, type = 'text', encoding = "UTF-8")
json_obj <- fromJSON(json_data)
#text <- json_obj$items$title
bigdata_news <- data.frame(json_obj)
bigdata_news <- bigdata_news[5]
bigdata_news$items.title <- gsub("</?b>", "", bigdata_news$items.title)
bigdata_news$items.title <- gsub("&quot;", "", bigdata_news$items.title)
bigdata_news$items.title <- gsub("&gt;", "", bigdata_news$items.title)
names(bigdata_news) <- c("뉴스 제목")
View(bigdata_news)



