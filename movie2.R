library(rvest)

site<- "https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page="

text<- NULL
D_point<-NULL
D_review<-NULL
page=NULL
review_info <- NULL

for(i in 1:5) {
  url <- paste(site, i, sep="")
  text <- read_html(url)
  
  nodes <- html_nodes(text, ".emph_grade")
  D_point <- html_text(nodes)
  
  nodes <- html_nodes(text, ".desc_review")
  D_review <- html_text(nodes, trim=TRUE)
  #D_review <- D_review[nchar(D_review) > 0]
  
  if(length(D_review) == 10) {
    page <- data.frame(D_point, D_review)
    review_info <- rbind(review_info, page)
  } else {
    cat(paste(i," 리뷰글이 없는 페이지\n"))
  }
}
View(review_info)
write.csv(review_info, "movie_reviews2.csv")
