
remDr <- remoteDriver(remoteServerAddr = "localhost", port=4445, browserName="chrome")
remDr$open()
remDr$navigate("http://gs25.gsretail.com/gscvs/ko/products/event-goods")

twotoone_page <- remDr$findElement(using='css','#TWO_TO_ONE')
twotoone_page$clickElement()

goodsname <- NULL
goodsprice <- NULL
twotoone_total <- NULL
pagecheck <- 1

repeat {
goodsname_add <- remDr$findElements(using='css', '#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.tit')
goodsname_add <- sapply(goodsname_add, function(x) {x$getElementText()})
goodsname <- c(goodsname, unlist(goodsname_add))

goodsprice_add <- remDr$findElements(using='css', '#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.price > span')
goodsprice_add <- sapply(goodsprice_add, function(x) {x$getElementText()})
goodsprice <- c(goodsprice, unlist(goodsprice_add))

twotoone_pagenext <- remDr$findElement(using='css',"#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next")
twotoone_pagenext$clickElement()
Sys.sleep(2)

if (pagecheck == 102) {break}
pagecheck <- pagecheck + 1
}

length(goodsname)
length(goodsprice)
twotoone_total <- data.frame(goodsname, goodsprice)
twotoone_total$goodsprice <- gsub("[[:punct:]]", "", twotoone_total$goodsprice)
twotoone_total$goodsprice <- gsub("[가-힣]", "", twotoone_total$goodsprice)

View(twotoone_total)

write.csv(twotoone_total,"gs25_twotoone.csv")

