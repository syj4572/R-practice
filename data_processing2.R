
# 문제2

text <- readLines("c:/Rexam/data/memo.txt", encoding = "UTF-8")
text_list <- text[1:7]

line1 <- text_list[1]
line1 <- gsub("[[:punct:]]", "", line1) 
line1

line2 <- text_list[2]
line2 <- toupper(line2)
line2

line3 <- text_list[3]
line3 <- gsub("[0-9]", "", line3) 
line3

line4 <- text_list[4]
line4 <- gsub("[A-Za-z]", "", line4) 
line4

line5 <- text_list[5]
line5 <- gsub("[[:punct:]]", "", line5) 
line5 <- gsub("[1234567890]", "", line5) 
line5

line6 <- text_list[6]
line6 <- gsub("[[:space:]]", "", line6) 
line6

line7 <- text_list[7]
line7 <- tolower(line7)
line7

update_text <- c(line1,line2,line3,line4,line5,line6,line7)

write(update_text, "memo_new.txt")
