library(rJava)
library(RJDBC)
library(DBI)

drv <- JDBC(driverClass = 'org.mariadb.jdbc.Driver', 
            'mariadb-java-client-2.6.2.jar')

conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work', 'scott', 'tiger')


# 문제 1

png("clicklog1.png ", 700, 400)

product = "select * from productlog"
product_click <- dbGetQuery(conn, product)
product_click

product1 = "select * from productlog where pid = 'p001'"
product1 <- dbGetQuery(conn, product1)
product1 <- product1$pid
p001 <- length(product1)

product2 = "select * from productlog where pid = 'p002'"
product2 <- dbGetQuery(conn, product2)
product2 <- product2$pid
p002 <- length(product2)


product3 = "select * from productlog where pid = 'p003'"
product3 <- dbGetQuery(conn, product3)
product3 <- product3$pid
p003 <- length(product3)


product4 = "select * from productlog where pid = 'p004'"
product4 <- dbGetQuery(conn, product4)
product4 <- product4$pid
p004 <- length(product4)


product5 = "select * from productlog where pid = 'p005'"
product5 <- dbGetQuery(conn, product5)
product5 <- product5$pid
p005 <- length(product5)


product6 = "select * from productlog where pid = 'p006'"
product6 <- dbGetQuery(conn, product6)
product6 <- product6$pid
p006 <- length(product6)


product7 = "select * from productlog where pid = 'p007'"
product7 <- dbGetQuery(conn, product7)
product7 <- product7$pid
p007 <- length(product7)


product8 = "select * from productlog where pid = 'p008'"
product8 <- dbGetQuery(conn, product8)
product8 <- product8$pid
p008 <- length(product8)


product9 = "select * from productlog where pid = 'p009'"
product9 <- dbGetQuery(conn, product9)
product9 <- product9$pid
p009 <- length(product9)

product10 = "select * from productlog where pid = 'p010'"
product10 <- dbGetQuery(conn, product10)
product10 <- product10$pid
p010 <- length(product10)

product_name <- c('p001','p002','p003','p004','p005','p006','p007','p008','p009','p010')
product_click <- c(p001,p002,p003,p004,p005,p006,p007,p008,p009,p010)

product_list <- data.frame(product_name, product_click)

xname <- product_list$product_name  
barplot(product_list$product_click, main="세로바그래프실습", xlab="상품ID", ylab="클릭수", col=terrain.colors(10),names.arg=xname)

dev.off()

-----------------------------------

product_table <- dbReadTable(conn, 'productlog')
product_click <- table(product_table$pid)
  
png("clicklog1.png ", 700, 400)

barplot(product_click, main="세로바그래프실습", xlab="상품ID", ylab="클릭수", col=terrain.colors(10),names.arg=xname)

dev.off()


# 문제 2

png("clicklog2.png ", 500, 400)

product = "select * from productlog"
product_clicktime <- dbGetQuery(conn, product)
product_clicktime

click_time <- product_clicktime$clicktime
clicktime_detail <- substr(click_time,9,10)
str(clicktime_detail)
summary(clicktime_detail)

clicktime_detail <- table(clicktime_detail)

length(clicktime_detail)

name <- names(clicktime_detail)

graphname <- paste(as.integer(name), '~', as.integer(name)+ 1) 
names(clicktime_detail) <- graphname

pie(clicktime_detail, main='파이그래프 실습', col=cm.colors(17))

dev.off()

# 문제 3

png("clicklog3.png ", 500, 400)

library(showtext)
showtext_auto() 
font_add(family = "cat", regular = "fonts/HoonWhitecatR.ttf")
font_add(family = "dog", regular = "fonts/THEdog.ttf")
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")

data_load <- read.table("data/성적.txt", header=T)
data_load <- data_load[,3:5]

boxplot(data_load, col=rainbow(3), axes=F)
axis(1, at=1:3, lab=names(data_load), family="maple")
axis(2, at=seq(2,10,2), family="dog")
title("과목별 성적 분포", family="cat", cex.main=1.5, col.main="orange")

dev.off()

