
# 문제 1

birthday <- as.Date("1994-05-10")
birthday <- format(birthday, "%a")

name <- "신연중"

paste(name, "은 ", birthday, "요일에 태어났어요.", sep="")

# 문제 2

today <- Sys.Date()
today <- format(today, "%Y년 %m월 %d일")

day_count <- as.Date("1994/05/10") - as.Date("2020/09/23")
day_count <- gsub("[[:alpha:][:punct:]]", "", day_count)

paste("오늘은 ", today, "이고 내가 태어난지 ", day_count , "일째되는 날이당", sep='')

# 문제 3

today2 <- Sys.time()
format(today2, "%Y년 %m월 %d분 %H시 %M분 %S초")

# 문제 4

datetime <- c('12/25/2020 23:59:59', '1/25/2021 23:59:59', '2/25/2021 23:59:59')
datetimeDf <- data.frame(datetime)
a <- as.POSIXlt(datetimeDf$datetime, format="%m/%d/%Y %H:%M:%S")
str(a)


# 문제 5

day <- as.Date("2020-06-01")
daycheck <- format(day, "%a")

for (i in 1:7){
  day <- as.Date(paste("2020-06-0",i,sep=''))
  daycheck <- format(day, "%a")
  day <- gsub("[[:punct:]]", "", day)
  day <- gsub("(2020)", "", day) 
  cat('"',daycheck,'-',day,'"',sep='')
}

# 문제 6

v1 <- c('Happy', 'Birthday', 'to', 'You')
length(v1)
sum(nchar(v1))

# 문제 7

v2 <- c(paste(v1,collapse = " "))
length(v2)
sum(nchar(v2))

# 문제 8

paste(LETTERS[1:10],c(1:10))

paste(LETTERS[1:10],c(1:10), sep='')

# 문제 9

msg <- 'Good Morning'
msg <- strsplit(msg, split= " ")
msg1 <- msg[[1]][1]
msg2 <- msg[[1]][2]
msg_final <- c(msg1,msg2)
msg_final <- strsplit(msg_final, split= " ")

# 문제 10

good <- c("Yesterday is history, tommrrow is a mystery, today is a gift!", 
  "That's why we call it the present - from kung fu Panda")

good <- gsub("[[:punct:]]", "", good)

good <- strsplit(good, split= " ")

# 문제 11

ssn <- c("941215-1234567","850605-2345678","760830-1357913")
a <- substr(ssn, 1, 7)
paste(a, "*******", sep='')

# 문제 12

#(1)
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r1 <- gsub("[가-힣]", "", s1)
r1

#(2)
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r2 <- gsub("[[:punct:]]", "", s1)
r2

#(3)
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r3 <- gsub("[가-힣]", "", s1)
r3 <- gsub("[[:punct:]]", "", r3)
r3

#(4)
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r4 <- sub(pattern="100", replacement="백", s1)



