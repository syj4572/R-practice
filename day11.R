# 데이터 전처리(2) - 날짜와 시간 관련 기능을 지원하는 함수들

(today <- Sys.Date()) # 시간까지 출력하고 싶으면 Sys.time
str(today)
format(today, "%Y년 %m월 %d일")
format(today, "%d일 %B %Y년")
format(today, "%y")
format(today, "%Y")
format(today, "%B")
format(today, "%a")
format(today, "%A")
weekdays(today) 
months(today) 
quarters(today)
unclass(today)  # 1970-01-01을 기준으로 얼마나 날짜가 지났지는 지의 값을 가지고 있다.
Sys.Date()
Sys.time()
Sys.timezone()

as.Date('1/15/2018',format='%m/%d/%Y') # format 은 생략 가능
as.Date('4월 26, 2018',format='%B %d, %Y')
as.Date('110228',format='%d%b%y') # NA값 출력
as.Date('11228',format='%d%b%y') # 월 앞에 자동으로 0을 넣어주지 않기에 0을 빼기
as.Date('110228',format='%d%m%y') # m은 두자리를 출력하기에 가능

x1 <- "2019-01-10 13:30:41"
# 문자열을 날짜형으로
as.Date(x1, "%Y-%m-%d %H:%M:%S") # as.Date이기에 시분초 안나옴.
# 문자열을 날짜+시간형으로
strptime(x1, "%Y-%m-%d %H:%M:%S")
strptime('2019-08-21 14:10:30', "%Y-%m-%d %H:%M:%S")

x2 <- "20200601"
as.Date(x2, "%Y%m%d")
datetime<-strptime(x2, "%Y%m%d")
str(datetime)

as.Date("2020/01/01 08:00:00") - as.Date("2020/01/01 05:00:00")
as.POSIXct("2020/01/01 08:00:00") - as.POSIXct("2020/01/01 05:00:00")
as.POSIXlt("2020/01/01 08:00:00") - as.POSIXlt("2020/01/01 05:00:00")

t<-Sys.time()
ct<-as.POSIXct(t)
lt<-as.POSIXlt(t)
str(ct) 
str(lt) 
unclass(ct) 
unclass(lt) 
lt$mon+1
lt$hour
lt$year+1900
as.POSIXct(1449894438,origin="1970-01-01")
as.POSIXlt(1449894438,origin="1970-01-01")

as.POSIXlt("2020/12/25")$wday
as.POSIXlt("2020/12/25")$wday
as.POSIXlt("2020/12/25")$wday
as.POSIXlt("2020/12/25")$wday
as.POSIXlt("2020/12/25")$wday


#올해의 크리스마스 요일 2가지방법(요일명,숫자)
christmas2<-as.POSIXlt("2020-12-25")
weekdays(christmas2)
christmas2$wday
#2020년 1월 1일 어떤 요일
tmp<-as.POSIXct("2020-01-01")
weekdays(tmp)
#오늘은 xxxx년x월xx일x요일입니다 형식으로 출력
tmp<-Sys.Date()
year<-format(tmp,'%Y')
month<-format(tmp,'%m')
day<-format(tmp,'%d')
weekday<-format(tmp,'%A')
paste("오늘은 ",year,"년 ",month,"월 ",day,"일 ",weekday," 입니다.",sep="")

format(tmp,'오늘은 %Y년 %B %d일 %A입니다')

# 데이터 전처리(3) - 문자열 처리 관련 주요 함수들 

x <- "We have a dream"
nchar(x)
length(x)

y <- c("We", "have", "a", "dream")
length(y)
nchar(y)

letters
sort(letters, decreasing=TRUE)

fox.says <- "It is only with the HEART that one can See Rightly"
tolower(fox.says)
toupper(fox.says)

substr("Data Analytics", start=1, stop=4)
substr("Data Analytics", 6, 14)
substring("Data Analytics", 6)

classname <- c("Data Analytics", "Data Mining", 
               "Data Visualization")
substr(classname, 1, 4)

countries <- c("Korea, KR", "United States, US", 
               "China, CN")
substr(countries, nchar(countries)-1, nchar(countries))

head(islands)
landmesses <- names(islands)
landmesses
grep(pattern="New", x=landmesses)

index <- grep("New", landmesses)
landmesses[index]
# 동일
grep("New", landmesses, value=T)


txt <- "Data Analytics is useful. Data Analytics is also interesting."
sub(pattern="Data", replacement="Business", x=txt)
gsub(pattern="Data", replacement="Business", x=txt)

x <- c("test1.csv", "test2.csv", "test3.csv", "test4.csv")
gsub(".csv", "", x)

gsub("[ABC]", "@", "123AunicoBC98ABC")
gsub("ABC", "@", "123AunicoBC98ABC")
gsub("(AB)|C", "@", "123AunicoBC98ABC")
gsub("A|(BC)", "@", "123AunicoBC98ABC")
gsub("A|B|C", "@", "123AunicoBC98ABC")

words <- c("ct", "at", "bat", "chick", "chae", "cat", 
           "cheanomeles", "chase", "chasse", "mychasse", 
           "cheap", "check", "cheese", "hat", "mycat")

grep("che", words, value=T)
grep("at", words, value=T)
grep("[ch]", words, value=T)
grep("[at]", words, value=T)
grep("ch|at", words, value=T)
grep("ch(e|i)ck", words, value=T)
grep("chase", words, value=T)
grep("chas?e", words, value=T) # 0개 or 1개 (중요)
grep("chas*e", words, value=T) # 0개 이상 (중요)
grep("chas+e", words, value=T) # 1개 이상 (중요)
grep("ch(a*|e*)se", words, value=T)
grep("^c", words, value=T) # c로 시작하는
grep("t$", words, value=T) # t로 끝나는
grep("^c.*t$", words, value=T)

words2 <- c("12 Dec", "OK", "http//", 
            "<TITLE>Time?</TITLE>", 
            "12345", "Hi there")

grep("[[:alnum:]]", words2, value=TRUE)
grep("[[:alpha:]]", words2, value=TRUE)
grep("[[:digit:]]", words2, value=TRUE)
grep("[[:punct:]]", words2, value=TRUE)
grep("[[:space:]]", words2, value=TRUE)
grep("\\w", words2, value=TRUE)
grep("\\d", words2, value=TRUE)
grep("\\s", words2, value=TRUE)



fox.said <- "What is essential is invisible to the eye"
fox.said
strsplit(x= fox.said, split= " ")
strsplit(x= fox.said, split="")

fox.said.words <- unlist(strsplit(fox.said, " "))
fox.said.words
fox.said.words <- strsplit(fox.said, " ")[[1]]
fox.said.words
fox.said.words[3]
p1 <- "You come at four in the afternoon, than at there I shall begin to the  happy"
p2 <- "One runs the risk of weeping a little, if one lets himself be tamed"
p3 <- "What makes the desert beautiful is that somewhere it hides a well"
littleprince <- c(p1, p2, p3)
strsplit(littleprince, " ")
strsplit(littleprince, " ")[[3]] 
strsplit(littleprince, " ")[[3]][5]

#소스 14
# 데이터 시각화
install.packages("showtext")
library(showtext)
showtext_auto() 
font_add(family = "cat", regular = "fonts/HoonWhitecatR.ttf")
font_add(family = "dog", regular = "fonts/THEdog.ttf")
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")
rainbow(10)

국어<- c(4,7,6,8,5,5,9,10,4,10)  
plot(국어)

plot(국어, type="o", col="blue", family="maple")       
title(main="성적그래프", col.main="red", font.main=4, family="maple")

국어 <- c(4,7,6,8,5,5,9,10,4,10)
수학 <- c(7,4,7,3,8,10,4,10,5,7)


plot(국어, type="o", col="blue")
lines(수학, type="o", pch=16, lty=2, col="red")     
title(main="성적그래프", col.main="red", font.main=3)

국어 <- c(4,7,6,8,5,5,9,10,4,10)
par(mar=c(1,1,1,1), mfrow=c(4,2))

plot(국어, type="p", col="blue", main="type = p", xaxt="n", yaxt="n")
plot(국어, type="l", col="blue", main="type = l", xaxt="n", yaxt="n")
plot(국어, type="b", col="blue", main="type = b", xaxt="n", yaxt="n")
plot(국어, type="c", col="blue", main="type = c", xaxt="n", yaxt="n")
plot(국어, type="o", col="blue", main="type = o", xaxt="n", yaxt="n")
plot(국어, type="h", col="blue", main="type = h", xaxt="n", yaxt="n")
plot(국어, type="s", col="blue", main="type = s", xaxt="n", yaxt="n")
plot(국어, type="S", col="blue", main="type = S", xaxt="n", yaxt="n")
par(mar=c(5,5,5,5), mfrow=c(1,1))

국어 <- c(4,7,6,8,5,5,9,10,4,10); 
수학 <- c(7,4,7,3,8,10,4,10,5,7)

plot(국어, type="o", col="blue", ylim=c(0,10), axes=FALSE, ann=FALSE)

# x, y 축 추가하기
axis(1, at=1:10, lab=c("01","02","03","04", "05","06","07","08","09","10"), family="maple") # x축 추가
axis(2, at=c(0,2,4,6,8,10), family="maple")  # y축 추가

# 그래프 추가하고, 그래프에 박스 그리기
lines(수학, type="o", pch=16, lty=2, col="red")    
box()   # 박스 그리기

# 그래프 제목, 축의 제목, 범례 나타내기
title(main="성적그래프", col.main="red", font.main=4, family="maple") 
title(xlab="학번", col.lab=rgb(0,1,0), family="maple")  
title(ylab="점수", col.lab=rgb(1,0,0), family="maple")  
legend(8, 3, c("국어","수학"), cex=0.8, col=c("blue","red"), pch=c(21,16), lty=c(1,2))  



(성적 <- read.table("data/성적.txt", header=TRUE))

plot(성적$학번, 성적$국어, main="성적그래프", xlab="학번", ylab="점수",  xlim=c(0, 11), ylim=c(0, 11)) 

ymax <- max(성적[3:5]) #성적 데이터 중에서 최대값을 찾는다(y 축의 크기 제한)
ymax
pcols<- c("red","blue","green")
png(filename="성적.png", height=400, width=700, bg="white") # 출력을 png파일로 설정
plot(성적$국어, type="o", col=pcols[1], ylim=c(0, ymax), axes=FALSE, ann=FALSE)
axis(1, at=1:10, lab=c("01","02","03","04","05","06","07","08","09","10"))
axis(2, at=c(0,2,4,6,8,10), lab=c(0,2,4,6,8,10))
box()
lines(성적$수학, type="o", pch=16, lty=2, col=pcols[2])
lines(성적$영어, type="o", pch=23, lty=3, col=pcols[3] )
title(main="성적그래프", col.main="red", font.main=4)
title(xlab="학번", col.lab=rgb(1,0,0))
title(ylab="점수", col.lab=rgb(0,0,1))
legend(1, ymax, names(성적)[c(3,4,5)], cex=0.8, col=pcols, pch=c(21,16,23), lty=c(1,2,3))
dev.off()

plot(국어, 수학)
plot(수학~국어) # 포뮬러 형식

?plot

# 막대그래프 그리기

barplot(국어)

coldens <- seq(from=10, to=100, by=10)   # 막대그래프의 색밀도 설정을 위한 벡터
xname <- 성적$학번                                         # X 축 값 설정위한  벡터
barplot(성적$국어, main="성적그래프", xlab="학번", ylab="점수", border="red", col="green", density=coldens, names.arg=xname, family="dog")

# 학생의 각 과목에 대한 각각의 점수에 대한 그래프
성적1<- 성적[3:5] 
str(성적1)
par(mar=c(5,5,5,5), mfrow=c(1,1))
barplot(as.matrix(성적1), main="성적그래프", beside=T, ylab="점수", col=rainbow(10), family="cat")

par(mar=c(5,5,5,5), mfrow=c(1,2))
barplot(as.matrix(성적1), main="성적그래프", ylab="점수", col=rainbow(10))
barplot(t(성적1), main="성적그래프", ylab="점수", col=rainbow(10))

par(mar=c(5,5,5,5), mfrow=c(1,1))
# 학생의 각 과목에 대한 합계 점수에 대한 그래프
xname <- 성적$학번;    #  x축 레이블용 벡터
par(xpd=T, mar=par()$mar+c(0,0,0,4));   # 우측에 범례가 들어갈 여백을 확보
barplot(t(성적1), main="성적그래프", ylab="점수", col=rainbow(3), space=0.1, cex.axis=0.8, names.arg=xname, cex=0.8)
legend(11,30, names(성적1), cex=0.8, fill=rainbow(3));

par(xpd=T, mar=c(5,5,5,5));   # 우측에 범례가 들어갈 여백을 확보
barplot(t(성적1), main="성적그래프", ylab="점수", col=rainbow(3), space=0.1, cex.axis=0.8, names.arg=xname, cex=0.8)
legend(11,30, names(성적1), cex=0.8, fill=rainbow(3));


# 학생의 각 과목에 대한 합계 점수에 대한 그래프(가로막대 그래프)
xname <- 성적$학번;    #  x축 레이블용 벡터
barplot(t(성적1), main="성적그래프", ylab="학번", col=rainbow(3), space=0.1, cex.axis=2.0, names.arg=xname,cex.lab=3.0, horiz=T);
legend(30,11, names(성적1), cex=0.8, fill=rainbow(3))

?barplot


# 파이그래프
(성적 <- read.table("data/성적.txt", header=TRUE));
pie(성적$국어, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10))
pie(성적$국어, clockwise=T, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10))
pie(성적$국어, density=10, clockwise=T, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10))
pie(성적$국어, labels=paste(성적$성명, "-", 성적$국어), col=rainbow(10), main="국어성적", edges=10)
pie(성적$국어, labels=paste(성적$성명,"\n","(",성적$국어,")"), col=rainbow(10))
pie(rep(1, 24), col = rainbow(24), radius = 0.5)


# 히스토그램
hist(성적$국어, main="성적분포-국어", 
       xlab="점수", breaks=5, 
       col = "lightblue", border = "pink", family='dog')
hist(성적$수학, main="성적분포-수학", 
       xlab="점수", col = "lightblue", 
       breaks=2, border = "pink")
hist(성적$국어, main="성적분포-국어", 
       xlab="점수", ylab="도수", 
       col=rainbow(12), border = "pink")

nums <- sample(1:100, 30)
hist(nums, family='maple')
hist(nums, breaks=c(0,10,20,30,40,50,60,70,80,90,100))
hist(nums, breaks=c(0,50,100), probability = T)
hist(nums, breaks=c(0,33,66,100))


# 박스플롯
summary(성적$국어)
boxplot(성적$국어, col="yellow",  ylim=c(0,10), xlab="국어", ylab="성적", family='dog')


성적2 <- 성적[,3:5]
boxplot(성적2, col=rainbow(3), ylim=c(0,10), ylab="성적")

data <- read.table("data/온도.txt", header=TRUE, sep=",")
head(data, n=5) 
boxplot(data)
boxplot(data, las = 2)
boxplot(data, las = 2, at = c(1,2,3,4, 6,7,8,9, 11,12,13,14))
chtcols = rep(c("red","sienna","palevioletred1","royalblue2"), times=3)
chtcols
boxplot(data, las = 2, at = c(1,2,3,4, 6,7,8,9, 11,12,13,14), col=chtcols)
grid(col="gray", lty=2, lwd=1)

boxplot(data, family='maple')  # 안됨!! 다른 아이들은 다 되는데!!

boxplot(data, axes=F)
axis(1, at=1:12, lab=names(data), family="maple") # x축 추가
axis(2, at=seq(-5, 15, 5), family="dog")
title("다양하게 폰트를 지정한 박스플롯", family="cat", cex.main=2)
box()

rainbow()
heat.colors()
terrain.colors()
topo.colors()
cm.colors()
gray.colors()


search()

