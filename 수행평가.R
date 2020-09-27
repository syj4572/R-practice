
library(rvest)

site<- "https://comic.naver.com/genre/bestChallenge.nhn?&page="

text <- NULL
comicName <- NULL
comicSummary <- NULL
comicGrade <- NULL


for(i in 1:5){
url <- paste(site, i, sep="")
text <- read_html(url)
# comicName 
nodes <- html_nodes(text, "h6.challengeTitle > a")
comicName <- html_text(nodes, trim=TRUE)

# comicSummary 
nodes <- html_nodes(text, "div.summary")
comicSummary <- html_text(nodes, trim=TRUE)

# comicGrade 
nodes <- html_nodes(text, "div.rating_type > strong")
comicGrade <- html_text(nodes, trim=TRUE)

list <- data.frame(comicName, comicSummary, comicGrade)
webtoon <- rbind(webtoon, list)
}

View(webtoon)




