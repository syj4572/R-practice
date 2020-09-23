

remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()

url<-'https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2'
remDr$navigate(url)

# 1page. 첫번째 댓글 text 가져오기
more<-remDr$findElement(using='css','body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > ul > li:nth-child(1) > div.review_desc')
more$getElementTagName()
more$getElementText()

# 1page ~ 10page까지 링크 클릭하여 페이지 이동하기 -> 고민
for (i in 2:11) {
  nextCss <- paste0("body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > span:nth-child(",i,")")
  nextPage<-remDr$findElement(using='css',nextCss)
  nextPage$clickElement()
  Sys.sleep(2)
}

# 1page. 댓글의 text 가져오기
repl_v = NULL;
doms2<-remDr$findElements(using ="css selector","div.review_desc > p")
repl <-sapply(doms2,function(x){x$getElementText()})
repl_v <- c(repl_v, unlist(repl))

# 전체 페이지 댓글 text 가져오기
reple <- NULL
repeat{
  doms <- remDr$findElements(using = "css selector", "div.review_desc > p")
  Sys.sleep(1)
  reple_v <- sapply(doms, function (x) {x$getElementText()})
  print(reple_v)
  reple <- append(reple, unlist(reple_v))
  cat(length(reple), "\n") #여기까지는 1page 4개 댓글의 text 가져옴
  pageLink <- remDr$findElements(using='css',"div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > a.direction.next")
  remDr$executeScript("arguments[0].click();",pageLink)
  Sys.sleep(2)
  #curr_PageElem <- remDr$findElement(using='css','body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > span:nth-child(5)')
  #curr_PageNewNum <- as.numeric(curr_PageElem$getElementText())
  #cat(paste(curr_PageOldNum, ':', curr_PageNewNum,'\n'))
  #if(curr_PageNewNum == curr_PageOldNum)  {
  #  cat("종료\n")
  #  break; 
  #}
  #curr_PageOldNum <- curr_PageNewNum;
  if (length(reple)==40) {break}
}
cat(length(reple), "개의 댓글 추출\n")
write(reple,"naverhotel.txt")






