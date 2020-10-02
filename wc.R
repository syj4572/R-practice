
word_data <- readLines("data/yes24.txt")
word_data

word_data2 <- extractNoun(word_data)

undata <- unlist(word_data2)

word_table <- table(undata)
word_table

undata2 <- Filter(function(x) {nchar(x) >= 2}, undata)
word_table2 <- table(undata2)
word_table2

result<-wordcloud2(word_table2, fontFamily = "휴먼옛체", rotateRatio = 0, size=0.5, shape = 'circle')
saveWidget(result,"wc.html",title="WORDCLOUD 실습", selfcontained = F)





