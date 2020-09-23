library(rvest)

site<- "https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page="

text<- NULL
D_point<-NULL
D_review<-NULL
movie_list <- NULL

page <- 0

while(page <= 10){
  
  page <- page + 1
  url <- paste(site, page, sep="")
  text <- read_html(url)
  
  nodes <- html_nodes(text, ".emph_grade")
  D_point <- html_text(nodes)
  
  nodes <- html_nodes(text, ".desc_review")
  D_review <- html_text(nodes, trim=TRUE)
  
  list <- data.frame(D_point, D_review)
  movie_list <- rbind(movie_list, list)
}

View(movie_list)
write.csv(movie_list, "movie_reviews3.csv")


