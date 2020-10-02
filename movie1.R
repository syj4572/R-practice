
library(rvest)

text<- NULL; D_point<-NULL; D_review<-NULL; page=NULL

url<- "https://movie.daum.net/moviedb/grade?movieId=131576"

text <- read_html(url) #utf-8
text

# 영화 평점
nodes <- html_nodes(text, ".emph_grade")
D_point <- html_text(nodes)
D_point

# 영화 리뷰
nodes <- html_nodes(text, ".desc_review") # class 속성은 중복이 있을 수 있으니 조심해야함
nodes <- html_text(nodes, trim=TRUE)
nodes
D_review <- nodes[nchar(nodes) > 0] #nchar = 텍스트 갯수
D_review
page <- data.frame(D_point, D_review)
View(page)
write.csv(page, "movie_reviews1.csv")

getwd()

