# 실습 1
# 문제1
v1 <- 1:10
v2 <- v1*2
max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)
v3 <- v2[-5]
v1;v2;v3;max_v;min_v;avg_v;sum_v

# 문제2
v4 <- seq(1,10,2)
v5 <- rep(1,5)
v6 <- rep(1:3,3)
v7 <- rep(1:3,each=2)
v4;v5;v6;v7

# 문제3
nums <- sample(1:100,10,replace=F)
(sort(nums))
(sort(nums, decreasing = T))
nums[nums > 50]
which(nums <= 50)
which.max(nums)
which.min(nums)

# 문제4
v8 <- seq(1,10,3)
names(v8) <- LETTERS[1:4]
names(v8);v8

# 문제5
score <- sample(1:20,5,replace=F)
myFriend <- c('둘리','또치','도우너','희동','듀크')
paste(score, myFriend, sep="-")
myFriend[which.max(score)]
myFriend[which.min(score)]
myFriend[which(score > 10)]

# 문제6
count <- sample(1:100,7,replace=F)
week.korname <- c('일요일','월요일','화요일','수요일','목요일','금요일','토요일')
paste(week.korname, count, sep=":", collapse=" ")
paste(week.korname, count, sep=":")
week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[which(count > 50)]


# 실습 2

# 문제 1

seq(10, 38, 2)

m1 <- matrix(seq(10, 38, 2), nrow = 3, byrow=T)
m2 <- m1 + 100
m_max_v <- max(m1)
m_min_v <- min(m1)
row_max <- apply(m1, 1, max)
col_max <- apply(m1, 2, max)

print(m1)
print(m2)
print(m_max_v)
print(m_min_v)
print(row_max)
print(col_max)

# 문제 2

n1 <- c(1,2,3)
n2 <- c(4,5,6)
n3 <- c(7,8,9)
num <- c(n1,n2,n3)
mat2 <- cbind(n1,n2,n3) 
matrix(num, nrow = 3)

# 문제 3

m3 <- matrix(1:9, nrow = 3, byrow=T)


# 문제 4

m4 <- m3  
colnames(m4) <- c("col1","col2","col3")
rownames(m4) <- c("row1","row2","row3")


# 문제 5

alpha <- matrix(letters[1:6], nrow = 2)
alpha2 <- rbind(alpha, letters[24:26])
alpha3 <- cbind(alpha, letters[c(19,16)])

# 문제6
a <- array(1:24, dim=c(2,3,4))
a[2,3,4]     # (1) 2행3열4층
a[2,,]       # (2) 각 층마다 2행의 데이터 
a[,1,]       # (3) 각 층마다 1열의 데이터
a[,,3]       # (4) 3층의 모든 데이터
a + 100      # (5) a라는 배열을 구성하는 모든 데이터에 100을 + 연산하여 출력
a[,,4] * 100 # (6) 4층의 모든 데이터들에 100을 곱한 결과를 출력
a[1,-1,]; a[1,c(2,3),]     # (7) 각층의 1행, 2열과3열만 출력
a[2,,2] <- a[2,,2]+ 100      # (8) 2층의 2행 데이터들의 값을 100을 더한 값으로 변경
a[,,1] <- a[,,1] - 2         # (9) 1층의 모든 데이터들의 값에 2를 뺀 값으로 변경
a <- a * 10  # (10) a 배열의 모든 데이터 값들을 10을 곱한 값으로 변경
rm(a)

# 실습 3
#문제1
iris
str(iris) # 데이터프레임 구조 확인


#문제2
df1 <- data.frame(x=c(1,2,3,4,5), y=seq(2,10,2)); df1


#문제3
col1 <- c(1,2,3,4,5) # 1:5
col2 <- letters[1:5]
col3 <- c(6,7,8,9,10)
df2 <- data.frame(col1, col2, col3); df2


#문제4
제품명 <- c("사과", "딸기", "수박")
가격 <- c(1800, 1500, 3000)
판매량 <- c(24, 38, 13)
df3 <- data.frame(제품명, 가격, 판매량)
str(df3)


#문제5
mean(df3$가격) # 과일 가격 평균
mean(df3$판매량) # 과일 판매량 평균


#문제6
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)
df4 <- data.frame(name, gender, math); df4; str(df4)

df4$stat <- c(76, 73, 95, 82, 35); df4 #파생변수
df4$score <- df4$math + df4$stat; df4
df4$grade <- ifelse(df4$score>=150, "A",
                    ifelse(df4$score>=100, "B",
                           ifelse(df4$score>=70, "C", "D")))
df4;


#문제7
getwd()
emp <- read.csv("data/emp.csv"); str(emp)


#문제8
emp[c(3,4,5),] # 3,4,5 행만 출력
emp[3:5,]
emp[seq(3,5),]


#문제9 
emp[-4] # 4번열 제외


#문제10
emp$ename # ename열만 출력
emp[2]
emp["ename"]

emp[,2]
emp[,2, drop=F]
emp[,"ename"]
emp[,"ename", drop=F]


#문제11
emp[, c("ename", "sal")]
subset(emp, select=c("ename", "sal"))
subset(emp, select=c(ename, sal))


#문제12
emp
subset(emp, subset=(job=="SALESMAN"), select=c("ename", "sal", "job"))


#문제13
emp
subset(emp, subset=(emp$sal>=1000 & emp$sal<=3000), select=(c("ename", "sal", "deptno")))


#문제14
emp
emp[emp$job != "ANALYST", c("ename", "job", "sal")]


#문제15
emp
emp[emp$job == "SALESMAN" | emp$job == "ANALYST", c("ename", "job")]


#문제16
emp
emp[is.na(emp$comm), c("ename", "sal")]


#문제 17
emp[order(emp$sal),] # 데이터프레임에서는 sort대신 order(인덱스)
a <- emp[order(emp$sal),]
tail(emp[order(emp$sal),], 1)
emp[which.max(emp$sal),]
#문제 18
dim(emp)
?subset

# 실습 4

#문제1
L1 <- list(
  name = "scott",
  sal = 3000
)
print(L1)

result1 <- L1[["sal"]]*2; result1
result1 <- L1[[2]]*2; result1


#문제2
L2 <- list("scott", c(100,200,300)); L2


#문제3
L3 <- list(c(3,5,7), c("A","B","C")); L3
L3[[2]][1] <- "Alpha"; L3


#문제4
L4 <- list(
  alpha = 0:4,
  beta = sqrt(1:5),
  gamma = log(1:5)
)
print(L4)

L4[1] + 10 # 리스트로 담아와서 연산 불가
L4[[1]] + 10 # L4[["alpha"]] + 10 L4$alpha + 10
L4[[2]] + 10
L4[[3]] + 10


#문제5
L5 <- list(
  data1 = LETTERS,
  data2 = head(read.csv("data/emp.csv"), n=3),
  data3 = L4
)
print(L5)

L5[["data1"]][1] # "A"
L5[["data2"]]$ename # "SMITH" "ALLEN" "WARD"
L5$data2$ename
L5[["data3"]][[3]] # 리스트가 아닌 벡터로 반환
L5$data3$gamma

#문제6
L6 <- list(
  math = list(95,90),
  writing = list(90,85),
  reading = list(85,80)
)
print(L6)

midterm_avg <- sum(unlist(L6)[c(1,3,5)]) / length(L6) # 중간고사 평균
finals_avg <- sum(unlist(L6)[c(2,4,6)]) / length(L6) # 기말고사 평균
semester_avg <- (midterm_avg + finals_avg) / 2 # 전체 평균
midterm_avg; finals_avg; semester_avg


L6 <- list(
  math = list(95, 90),
  writing = list(90, 85),
  reading = list(85, 80)
)

print(sum(unlist(L6))/length(unlist(L6)))
print(mean(unlist(L6)))

# 실습 5

# 문제1
grade <- sample(1:6, 1)
if(grade >= 1 & grade <= 3){
  cat(grade, "학년은 저학년입니다.")
}else{
  cat(grade, "학년은 고학년입니다.")
}


if(grade >= 1 && grade <= 3){
  cat(grade, "학년은 저학년입니다.")
}else{
  cat(grade, "학년은 고학년입니다.")
}

# 문제2

choice <- sample(1:5,1)
x1 <- 300
y1 <- 50
myresult <- 0
if (choice == 1){
  myresult <- x1+y1
}else if (choice == 2){
  myresult <- x1-y1
}else if (choice == 3){
  myresult <- x1*y1
}else if (choice == 4){
  myresult <- x1/y1
}else if (choice == 5){
  myresult <- x1%%y1
}
cat('결과값:',myresult)


(choice <- sample(1:5, 1))

result <- switch(EXPR=choice,
                 300+50,300-50,300*50,300/50,300%%50)
cat("결과값 :", result, sep="")


result <- switch(EXPR=choice,
                 "1"=300+50,"2"=300-50,"3"=300*50,"4"=300/50,"5"=300%%50)
cat("결과값 :", result, sep="")


result <- switch(EXPR=as.character(choice),
                 "1"=300+50,"2"=300-50,"3"=300*50,"4"=300/50,"5"=300%%50)
cat("결과값 :", result, sep="")


# 문제3
count <- sample(3:10, 1)
deco <- sample(1:3, 1)
count; deco

for(num in 1:count){
  if(deco==1){
    cat("*", sep="")
  }else if(deco==2){
    cat("$", sep="")
  }else{
    cat("#", sep="")
  }
}

count <- sample(3:10, 1)
deco <- sample(1:3, 1)

if (deco == 1) {
  cat(rep('*',times=count),"\n")
}else if (deco == 2){
  cat(rep('$',times=count),"\n")
}else if (deco == 3){
  cat(rep('#',times=count),"\n")
}


# 문제4
score <- sample(0:100, 1)

if (score>=90 && score<=100){
  score_range <- 1
}else if(score>=80){
  score_range <- 2
}else if(score>=70){
  score_range <- 3
}else if(score>=60){
  score_range <- 4
}else{
  score_range <- 5
}

result <- switch(EXPR=as.character(score_range),
                 "1"="A", "2"="B", "3"="C", "4"="D", "5"="F")
cat(score, "점은", result, "등급입니다.")

result <- switch(EXPR=score_range,
                 "A", "B", "C", "D", "F")
cat(score, "점은", result, "등급입니다.")


score <- sample(0:100, 1)
temp <- score %/% 10
temp <- as.character(temp) 
cat(score,"점은", switch(EXPR = temp, 
                "10"=, "9"="A" ,"8"="B","7"="C","6"="D","F"),"등급 입니다.","\n")

score <- as.character(sample(0:100, 1))
level <- switch(EXPR=score,
                "100"=,"99"=,"98"=,"97"=,"96"=,"95"=,"94"=,"93"=,"92"=,"91"=,"90"="A",
                "89"=,"88"=,"87"=,"86"=,"85"=,"84"=,"83"=,"82"=,"81"=,"80"="B",
                "79"=,"78"=,"77"=,"76"=,"75"=,"74"=,"73"=,"72"=,"71"=,"70"="C",
                "69"=,"68"=,"67"=,"66"=,"65"=,"64"=,"63"=,"62"=,"61"=,"60"="D",
                "F")
cat(score, "점은", level, "등급입니다.")



# 문제5
alpha <- vector()

for(num in 1:26){
  alpha[num] <- paste(LETTERS[num],letters[num], sep="")
}
alpha

x <- LETTERS
y <- letters
print(paste(x,y,sep=""))


for(nums in 1:26){
  alpha = paste(LETTERS[nums],letters[nums],sep="")
  cat('"',alpha, '" ', sep="")
}

paste(LETTERS, letters, sep="")

# 실습 6

#문제1
exam1 <- function(){
  alpha <- paste(LETTERS, letters, sep='')
  return(alpha)
}
exam1()

#문제2
exam2 <- function(num){
  sum <- 0
  for(i in 1:num){
    sum <- sum +i
  }
  return(sum)
}
exam2(5)
exam2(10)

#문제3
exam3 <- function(p1, p2){
  if(p1>p2) 
    result <- p1-p2
  else 
    result <- p2-p1
  return(result)
}
exam3(10, 20)
exam3(20, 5)
exam3(5, 30)
exam3(6, 3)

#문제4
exam4 <- function(p1, p2, p3){
  if(p2=='+'){
    calc <- p1+p3
  }else if(p2=='-'){
    if(p1>p3) 
      calc <- p1-p3
    else 
      calc <- p3-p1
  }else if(p2=='*'){
    calc <- p1*p3
  }else if(p2=='%/%'){
    if(p1==0)
      calc <- '오류1'
    else if(p3==0)
      calc <- '오류2'
    else
      calc <- p1%/%p3
  }else if(p2=='%%'){
    if(p1==0)
      calc <- '오류1'
    else if(p3==0)
      calc <- '오류2'
    else
      calc <- p1%%p3
  }else 
    calc <- '규격의 연산자만 전달하세요'
  return(calc)  
}
exam4(3, '+', 7)
exam4(5, '-', 50)
exam4(4, '*', 7)
exam4(0, '%/%', 10)
exam4(20, '%/%', 0)
exam4(50, '%/%', 2)
exam4(0, '%%', 3)
exam4(30, '%%', 0)
exam4(28, '%%', 3)
exam4(5, '#', 12)

#문제5
exam5 <- function(p1, p2='#'){
  if(p1>0){
    for (num in 1:p1){
      cat(p2)
    }
    cat('\n')
  }
}
exam5(5, )
exam5(7, '^')
exam5(0, '*')
exam5(-3, '@')

#문제6
exam6 <- function(...){
  data <- c(...)
  for (score in data){
    if(is.na(score)) print("NA는 처리불가")
    else{
      if(score>=85) grade <- '상'
      else if(score>=70) grade <- '중'
      else grade <- '하'
      print(paste(score,'점은 ', grade, ' 등급입니다.', sep=''))
    }
  }
}
exam6(80, 50, 70, 66, NA, 35)


# 실습 7

countEvenOdd <- function(inVector){
  if(is.numeric(inVector)&&is.vector(inVector)&&!is.list(inVector)) {
    cnteven <- 0; 
    cntodd <- 0;
    for (dt in inVector)
      if (dt %% 2 == 1) {
        cntodd = cntodd + 1
      } else {
        cnteven = cnteven + 1
      }
    return(list(even = cnteven, odd = cntodd))
  } else {
    return()
  }
}

countEvenOdd(c(1,2,3,4,5,6,7,8,9,10))
tst <- countEvenOdd(1:5)
tst[[1]]
tst$odd
countEvenOdd(c(1,2,3,4,5,6,7,8,9,10,"A"))





# [ 문제2 ]

vmSum <- function(inVector){
  if (is.vector(inVector)  && !is.list(inVector)){
    if(!is.numeric(inVector)){
      print("숫자 벡터를 전달하숑!")
      return(0)
    }
    return(sum(inVector))
  } else{
    return("벡터만 전달하숑!")
  }
}


vmSum(c("A",2,3,4,5,6,7,8,9,10))
vmSum(list())
vmSum(c(1,2,3,4,5,6,7,8,9,10))





# [ 문제3 ]

vmSum2 <- function(inVector){
  if (is.vector(inVector)  && !is.list(inVector)){
    if(!is.numeric(inVector)){
      warning("숫자 벡터를 전달하숑!")
      return(0)
    }
    return(sum(inVector))
  } else{
    stop("벡터만 전달하숑!")
  }
}



vmSum2(c("A",2,3,4,5,6,7,8,9,10))
vmSum2(list())
vmSum2(c(1,2,3,4,5,6,7,8,9,10))





# [ 문제4 ]

mySum <- function(inVector){
  if( is.null(inVector)) return()
  if( is.vector(inVector)  && !is.list(inVector)) {
    if(any(is.na(inVector))) warning("NA를 최저값으로 변경하여 처리함!!")
    
    amteven <- 0; amtodd <- 0;
    
    for (cnt in 1:length(inVector)){
      
      if (cnt %% 2 == 1) {
        amtodd = amtodd + ifelse(is.na(inVector[cnt]), min(inVector,na.rm=TRUE), inVector[cnt])
      } else {
        amteven = amteven + (if(is.na(inVector[cnt])){min(inVector,na.rm=TRUE)} else{inVector[cnt]})
      }
    }
    return(list(evenSum  = amteven, oddSum = amtodd))
  } else {
    stop("벡터만 처리 가능!!")
  }
}



mySum(NULL)
mySum(list())
mySum(c(1,2,3,4,5,6,7,8,9,10))
mySum(c(NA,2,3,4,5,6,7,8,9,10))


mySum <- function(v) {
  Sum <- list(
    eventhsum = 0,
    oddthsum = 0
  )
  if (is.vector(v)) {
    if (any(is.na(v))) {
      warning("NA를 최저값으로 변경하여 처리함!!")
      v[which(is.na(v))] <- min(v, na.rm=T) # which는 TRUE인 인덱스를 c() 벡터 안에 담아서줌
    }
    for (i in 1:length(v)) {
      if (i %% 2 == 0) {Sum$eventhsum <- Sum$eventhsum + v[i]}
      else {Sum[["oddthsum"]] <- Sum[["oddthsum"]] + v[i]}
    }
    return(Sum)
  } else if (!is.vector(v)) {
    if (is.null(v)) {return(NULL)}
    stop("벡터만 처리 가능!!")
  }
}


mySum <- function(x){
  if(is.null(x)){
    return()
  }else if(!is.vector(x) | is.list(x)){
    stop("벡터만 전달하세요!")
  }else{
    if(any(is.na(x))){
      warning("NA를 최저값으로 변경하여 처리함!")
      x[which(is.na(x))] <- min(x,na.rm=T)
    }
    o <- x[seq(1,length(x),2)]
    e <- x[seq(0,length(x),2)]
    oddSum <- sum(o)
    evenSum <- sum(e)
    l <- list(oddSum=oddSum,evenSum=evenSum)
    return(l)
  }
}


mySum <- function(e) {
  evenSum <- 0
  oddSum <- 0
  if (is.vector(e) && !any(is.na(e))){
    evenSum <- sum(e[seq(2, length(e), 2)])
    oddSum <- sum(e[seq(1, length(e), 2)])
    return (paste('홀수번째의 합', oddSum, '짝수번째의 합', evenSum))
  } else if (is.vector(e) && any(is.na(e))) {
    warning ("NA를 최저값으로 변경하여 처리함!!")
    e[is.na(e)] <- min(e, na.rm=T)
    evenSum <- sum(e[seq(2, length(e), 2)])
    oddSum <- sum(e[seq(1, length(e), 2)])
    return (paste('홀수번째의 합', oddSum, '짝수번째의 합', evenSum))
  } else if (is.null(e)){
    return ()
  } else {
    stop ("벡터만 처리 가능!!")
  }
}



# [ 문제5 ]

testFunc <- function(...){
  print(...)
}
testFunc(c(1,2,3,4,5,6))



myExpr <- function(inFunc){
  if(is.function(inFunc)) {
    args <- sample(1:45, 6)
    return(inFunc(args))
  } else {
    stop("수행 안할꺼임!!")
  }
  
}


sum <- NULL
myExpr("A")
myExpr(1)
myExpr(testFunc)
myExpr(min)





# [ 문제6 ]

createVector1 <- function(...){
  args <- c(...)
  if (length(args) == 0) return()
  if(any(is.na(...))) return(NA)
  return(args)
}



createVector1()
createVector1(c(NA, 1, 2, 3))
createVector1(c(0, 1, T, 2, 3))
createVector1(c('0', '1', 2, 3))
createVector1(c(T,F))





# [ 문제7 ]

createVector2 <- function(...){
  
  args <- list(...)
  
  numList <- c(); # vector()
  charList<-c(); 
  boolList<-c()
  
  for (dt in 1:length(args) ){
    if (is.numeric(args[[dt]])) {
      numList <- c(numList, args[[dt]])
    } else if (is.character(args[[dt]])) {
      charList <- c(charList, args[[dt]])
    } else if (is.logical(args[[dt]])) {
      boolList <- c(boolList, args[[dt]])
    }
  }
  
  return(list(numList = numList, charList = charList, boolList = boolList))
}



createVector2("A", 1, T, "B", 2, F)


createVector2<-function(...){
  data<-list(...)
  if(length(data)==0) return ()
  N<-c()
  C<-c()
  L<-c()
  for(Type in data){
    if(is.numeric(Type)){
      N=append(N,Type)
    }else if(is.character(Type)){
      C=append(C,Type)
    }else if(is.logical(Type)){
      L=append(L,Type)
    }
  }
  return (list(numeric=N,character=C,logical=L))
}


# [ 문제8 ]

numList <- scan("data/iotest1.txt")
ans1 <- sort(numList)
ans2 <- sort(numList, decreasing = TRUE)
ans3 <- sum(numList)
ans4 <- mean(numList)


cat("오름차순 :", ans1, "\n")
cat("내림차순 :", ans2, "\n")
cat("합 :", ans3, "\n")
cat("평균 :", ans4, "\n")



cat("오름차순 :", ans1, file="data/test1.R", append=TRUE, "\n")
cat("내림차순 :", ans2, file="data/test1.R", append=TRUE, "\n")
cat("합 :", ans3, file="data/test1.R", append=TRUE, "\n")
cat("평균 :", ans4, file="data/test1.R", append=TRUE, "\n")





# [ 문제9 ]

wordList <- scan("data/iotest2.txt", what="",encoding="UTF-8")
f_wordList <- factor(wordList)
smry <- summary(f_wordList)
maxLang <- names(smry)[which.max(smry)]



cat("가장 많이 등장한 단어는", maxLang, "입니다", file="data/test2.R", append=TRUE, "\n")


# 정적 크롤링&스크래핑 1

# case1

url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url)
text
#<h1> 태그의 컨텐츠
html_text(html_nodes(text, "h1"))
# <a> 태그의 컨텐츠
html_text(html_nodes(text, "a"))
# <a> 태그의 href 속성값
html_attr(html_nodes(text, "a"), "href")
# <img> 태그의 src 속성값
html_attr(html_nodes(text, "img"), "src")
# 첫 번째 <h2> 태그의 컨텐츠
html_text(html_nodes(text, "h2:nth-of-type(1)"))
# <ul> 태그의 자식 태그들 중 style 속성의 값이 green으로 끝나는 태그의 컨텐츠
html_text(html_nodes(text, "ul > [style$=green]"))
#두 번째 <h2> 태그의 컨텐츠
html_text(html_nodes(text, "h2:nth-of-type(2)"))
#<ol> 태그의 모든 자식 태그들의 컨텐츠 
html_text(html_nodes(text, "ol > *"))
#<table> 태그의 모든 자손 태그들의 컨텐츠 
html_text(html_nodes(text, "table *"))
#name이라는 클래스 속성을 갖는 <tr> 태그의 컨텐츠
html_text(html_nodes(text, "tr[class=name]"))
#target이라는 아이디 속성을 갖는 <td> 태그의 컨텐츠
html_text(html_nodes(text, "td#target"))


nodes <- html_nodes(text, "body > table > tr > td")
nodes
name <- html_text(nodes)
name


# case2

library(rvest)
url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url)
#1
node_h1 <- html_nodes(text, "h1")
content_h1 <- html_text(node_h1); content_h1

#2
node_a <- html_nodes(text, "a")
content_a <- html_text(node_a, trim = T)
attr_a <- html_attr(node_a, "href"); attr_a

#3
node_img <- html_nodes(text, "img")
attr_img <- html_attr(node_img, "src"); attr_img

#4
node_first_h2 <- html_nodes(text, "h2:nth-of-type(1)")
content_first_h2 <- html_text(node_first_h2); content_first_h2

#5
node_ul <- html_nodes(text, "ul>*[style='color:green']")
content_h2 <- html_text(node_ul); content_h2

#6
node_second_h2 <- html_nodes(text, "h2:nth-of-type(2)")
content_second_h2 <- html_text(node_second_h2); content_second_h2

#7
node_ol <- html_nodes(text, "ol>*")
content_ol <- html_text(node_ol); content_ol

#8
node_table <- html_nodes(text, "table *")
content_table <- html_text(node_table); content_table

#9
node_tr <- html_nodes(text, "tr.name")
content_tr <- html_text(node_tr); content_tr

node_td <- html_nodes(text, "td#target")
content_td <- html_text(node_td); content_td


# case3



url<- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url)

node1 <- html_nodes(text, "h1")
html_text(node1)

node2 <- html_nodes(text, xpath="/html/body/a")
html_attr(node2, "href")

node3 <- html_nodes(text, xpath="/html/body/a[5]/img")
html_attr(node3, "src")

node4 <- html_nodes(text, "body > h2:nth-child(9)")
html_text(node4)

node5 <- html_nodes(text, xpath="//*[@style='color:green']")
html_text(node5)

node6 <- html_nodes(text, "body > h2:nth-child(11)")
html_text(node6)

node7 <- html_nodes(text, xpath="/html/body/ol/*")
html_text(node7)


node8 <- html_nodes(text, xpath="/html/body/table//*")
html_text(node8)


node9 <- html_nodes(text, xpath="//*[@class='name']")
html_text(node9)


node10 <- html_nodes(text, xpath="//*[@id='target']")
html_text(node10)

# 9월 16일

library(rvest)
text<- NULL; id<-NULL; point<-NULL; review<-NULL; page=NULL
url<- "https://movie.daum.net/moviedb/grade?movieId=131576"
text <- read_html(url)   
text
# 영화평점
nodes <- html_nodes(text, "div.raking_grade > em")
point <- html_text(nodes)
point
# 영화리뷰 
nodes <- html_nodes(text, ".desc_review")
review <- html_text(nodes, trim=TRUE)
review
page <- data.frame(point, review)
View(page)
write.csv(page, "daummovie1.csv")
getwd()


library(rvest)

vuser<-NULL; vpoint<-NULL; vreview<-NULL

for (page in 1:5){
  text<- NULL; title<-NULL; point<-NULL; review<-NULL; user<-NULL
  url<- paste0("https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page=",page)
  text <- read_html(url)
  
  # 유저 이름름
  nodes <- html_nodes(text, ".review_info > .link_review > .link_profile")
  user <- html_text(nodes)
  vuser <-append(vuser,user)
  
  # 영화평점
  nodes <- html_nodes(text, ".raking_grade > .emph_grade")
  point <- html_text(nodes)
  vpoint <-append(vpoint,point)
  
  # 영화리뷰
  nodes <- html_nodes(text, ".review_info > .desc_review")
  review <- html_text(nodes, trim=TRUE)
  vreview <-append(vreview,review)
}
print(vuser)
print(vpoint)
print(vreview)
crawling <- data.frame(vuser,vpoint,vreview)
View(crawling)
write.csv(crawling, "tocsv/daummovie2.csv")




vuser<-NULL; vpoint<-NULL; vreview<-NULL
page<-0
while(TRUE){
  page<-page+1
  text<- NULL; title<-NULL; point<-NULL; review<-NULL; user<-NULL
  url<- paste0("https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page=",page)
  text <- read_html(url)
  
  # 유저 이름
  nodes <- html_nodes(text, ".review_info > .link_review > .link_profile")
  print(nodes)
  # 유저의 이름이 더이상 없으면 존재하지 않는 페이지
  if(length(nodes)==0) break
  
  user <- html_text(nodes)
  vuser <-append(vuser,user)
  
  # 영화평점
  nodes <- html_nodes(text, ".raking_grade > .emph_grade")
  point <- html_text(nodes)
  vpoint <-append(vpoint,point)
  
  # 영화리뷰
  nodes <- html_nodes(text, ".review_info > .desc_review")
  review <- html_text(nodes, trim=TRUE)
  vreview <-append(vreview,review)
}
crawling <- data.frame(vuser,vpoint,vreview)
View(crawling)
write.csv(crawling, "tocsv/daummovie3.csv")




library(rvest)

url <- "https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page="
review <- data.frame()

## 총 리뷰 개수
total_reviews <- html_text(html_node(read_html(url), "h4.tit_movie > span.txt_menu"))
total_reviews <- as.integer(substr(total_reviews, 2, nchar(total_reviews)-1))

## 총 페이지 수
if(total_reviews %% 10 > 0) {
  total_pages <- total_reviews %/% 10 + 1
} else
  total_pages <- total_reviews %/% 10

## 평점 + 리뷰글
for(i in c(1:total_pages)) {
  html <- read_html(paste(url, i, sep=""))
  # 평점
  rating_dom <- html_nodes(html, "div.review_info em.emph_grade")
  rating <- html_text(rating_dom)
  
  # 리뷰글
  comment_dom <- html_nodes(html, "div.review_info p.desc_review")
  comment <- html_text(comment_dom, trim=T)
  
  # 데이터프레임에 추가
  review <- rbind(review, data.frame(rating, comment))
}

View(review)

# save to csv
write.csv(review, "write/daummovie3.csv")


# 변수초기화
text<- NULL; newstitlenodes<-NULL; newstitle<-NULL; companynodes=NULL; newspapername <- NULL; daumnews <- NULL
# 대상사이트
site<- "https://news.daum.net/ranking/popular/"

text <- read_html(site)
text

# 뉴스제목
newstitlenodes <- html_nodes(text, "ul.list_news2 > li > div.cont_thumb > strong > a")
newstitle <- html_text(newstitlenodes)
newstitle

# 미디어사
companynodes <- html_nodes(text, "ul.list_news2 > li > div.cont_thumb > strong > span")
newspapername <- html_text(companynodes)
newspapername

# 프레임으로 저장
daumnews <- data.frame(newstitle, newspapername )

# 외부파일로 저장
write.csv(daumnews, "daumnews.csv")



library(rvest)

site <- "http://media.daum.net/ranking/popular/"
text <- read_html(site,  encoding="UTF-8") # meta 태그 확인
text

# 헤드라인 --> 사이드를 포함시키지 않도록 해야 함
nodes <- html_nodes(text, ".list_news2 > li > .cont_thumb > .tit_thumb > .link_txt")
newstitle <- html_text(nodes)
newstitle

# 신문사
nodes <- html_nodes(text, ".info_news")
newspapername <- html_text(nodes)
newspapername

page <- data.frame(newstitle, newspapername)
View(page)
write.csv(page, "daumnews.csv")


# Open API를 활용한 SNS & 공공DB


### 실습 1 네이버의 블로그에서 “맛집” 이라는 단어가 들어간 글들을 검색하여 100개까지 추출한 다음 naverblog.txt 파일로 저장하시오.
#단, XML 형식의 요청을 처리한다.
library(httr)
library(rvest)
library(XML)

searchUrl<- "https://openapi.naver.com/v1/search/blog.xml"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"

query <- URLencode(iconv("맛집","euc-kr","UTF-8")) ## 봄으로 검색, UTF-8로 인코딩해서 수행
url <- paste0(searchUrl, "?query=", query, "&display=100") # 쿼리라는 이름으로 검색어를 전달, 그리고 100개를 받아 옴 
doc <- GET(url, add_headers("Content_Type" = "application/xml",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret)) ## 요청 헤더 정보

doc2 <- htmlParse(doc, encoding="UTF-8")
text<- xpathSApply(doc2, "//item/description", xmlValue)
text
text <- gsub("</?b>", "", text)
text <- gsub("&.+t;", "", text)
text
write.table(text, "naverblog.txt")


### 실습 2 트위터에서  “코로나” 이라는 단어가 들어간 트윗 글들을 검색하여 100개까지 추출한 다음 twitter.txt 파일로 저장하시오.
# 제거해야 하는 문자들과 데이터 값 : 특수문자, 영어, NA 값

library(rtweet) 
appname <- "edu_data_collection"
api_key <- "RvnZeIl8ra88reu8fm23m0bST"
api_secret <- "wTRylK94GK2KmhZUnqXonDaIszwAsS6VPvpSsIo6EX5GQLtzQo"
access_token <- "959614462004117506-dkWyZaO8Bz3ZXh73rspWfc1sQz0EnDU"
access_token_secret <- "rxDWfg7uz1yXMTDwijz0x90yWhDAnmOM15R6IgC8kmtTe"
twitter_token <- create_token( # 토큰 생성
  app = appname,
  consumer_key = api_key,
  consumer_secret = api_secret,
  access_token = access_token,
  access_secret = access_token_secret)

key <- "코로나"
key <- enc2utf8(key) # key를 utf8로 인코딩
result <- search_tweets(key, n=100, token = twitter_token) # 토큰을 그때그때 받아서 처리
str(result)
result$retweet_text ## 리트윗만
content <- result$retweet_text
content <- gsub("[[:upper:][:lower:][:punct:][:cntrl:]]", "", content)
content <- content[!is.na(content)]
content
View(content)
write.table(content, "twitter.txt")

### 실습 3 공공DB에서 360번 차량에 대하여 정보를 추출한 다음 노선ID, 노선길이, 기점, 종점, 배차간격을 다음 형식으로 출력하시오.

#[ 360번 버스정보 ]
#노선ID : xxx
#노선길이 : xxx
#기점 : xxx
#종점 : xxx
#배차간격 : xxx

#참고 : http://api.bus.go.kr/contents/sub02/getBusRouteList.html

API_key  <- "%2BjzsSyNtwmcqxUsGnflvs3rW2oceFvhHR8AFkM3ao%2Fw50hwHXgGyPVutXw04uAXvrkoWgkoScvvhlH7jgD4%2FRQ%3D%3D"  # 인증키
bus_No <- "360"
url <- paste("http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?ServiceKey=", API_key, "&strSrch=", bus_No, sep="")
doc <- xmlParse(url, encoding="UTF-8") # xml 응답 내용으로 pathing
top <- xmlRoot(doc) #최상위 태그부터
top
df <- xmlToDataFrame(getNodeSet(doc, "//itemList")) # 데이터 프레임으로 변환 // 특정(itemlist) 태그 이하 태그 내용을 전부 데이터로 변환
df

busRouteId <- df[1,]$busRouteId
length <- df[1,]$length
stStationNm <- df[1,]$stStationNm
edStationNm <- df[1,]$edStationNm
term <- df[1,]$term

cat("[ 360번 버스정보 ]", "\n노선ID : ", busRouteId, 
    "\n노선길이 : ", length, "\n기점 : ", stStationNm, "\n종점 : ", edStationNm, "\n배차간격 : ", term)

#실습4

library(jsonlite)

rm(list=ls())
searchUrl<- "https://openapi.naver.com/v1/search/news.json"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"

query <- URLencode(iconv("빅데이터","euc-kr","UTF-8"))
url <- paste0(searchUrl, "?query=", query, "&display=100")
doc <- GET(url, add_headers("Content_Type" = "application/json",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))
json_data <- content(doc, type = 'text', encoding = "UTF-8")
json_obj <- fromJSON(json_data)
text <- json_obj$items$title
View(text)
text <- gsub("</?b>", "", text)
text <- gsub("&.+t;", "", text)
write(text,"navernews.txt")



remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()
url<-'https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2'
remDr$navigate(url)

vreviews<-NULL
#element 추출
while(TRUE){
  reviews<-remDr$findElements(using ="css selector","ul > li > div.review_desc > p")
  vreviews<-append(vreviews,unlist(sapply(reviews,function(x){x$getElementText()})))
  print(unlist(sapply(reviews,function(x){x$getElementText()})))
  
  
  disablenextbtn<-remDr$findElements(using ="css selector","div.review_ta.ng-scope > div.paginate > a.direction.next.disabled")
  print(disablenextbtn)
  if(length(disablenextbtn)) break
  else {
    Sys.sleep(2)
    nextbtn<-remDr$findElement(using ="css selector","div.review_ta.ng-scope > div.paginate > a.direction.next")
    print(nextbtn)
    nextbtn$clickElement()
    Sys.sleep(2)
    
  }
}

print(vreviews)
write(vreviews,"tocsv/naverhotel.txt")


library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()
url<-'https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2'
remDr$navigate(url)
Sys.sleep(3)
pageLink <- NULL
last_pageLink <- NULL
reple <- NULL

repeat{
  doms <- remDr$findElements(using = "css selector", "div.review_desc > p")
  reple_v <- sapply(doms, function (x) {x$getElementText()})
  reple <- append(reple, unlist(reple_v))
  
  try(last_pageLink <- remDr$findElements(using='css',"body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > a.direction.next.disabled"))
  if(length(last_pageLink)!=0)
    break
  
  pageLink <- remDr$findElements(using='css',"body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > a.direction.next")
  remDr$executeScript("arguments[0].click();",pageLink)
  Sys.sleep(2)
}

View(reple)
write(reple, "naverhotel.txt")


remDr <- remoteDriver(remoteServerAddr="localhost", port=4445, browserName="chrome")
remDr$open()
url_hotel <- "https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2"
remDr$navigate(url_hotel)
Sys.sleep(3)
hotel_review_link <- NULL
hotel_review <- NULL
first_review_writer <- NULL

repeat{
  doms_naver <- remDr$findElements(using="css selector", "body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > ul > li > div.review_desc > p")
  Sys.sleep(1)
  review_single_page <- sapply(doms_naver, function(x){x$getElementText()})
  print(review_single_page)
  hotel_review <- append(hotel_review, unlist(review_single_page))
  first_review <- remDr$findElement(using="css selector", "body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > ul > li:nth-child(1) > div.info > span:nth-child(5)")
  first_review_writer <- first_review$getElementText()
  next_page_link <- remDr$findElement(using="css selector", "body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > div.paginate > a.direction.next")
  next_page_link$clickElement()
  Sys.sleep(3)
  new_review <- remDr$findElement(using="css selector", "body > div > div.ng-scope > div.container.ng-scope > div.content > div.hotel_used_review.ng-isolate-scope > div.review_ta.ng-scope > ul > li:nth-child(1) > div.info > span:nth-child(5)")
  new_review_writer <- new_review$getElementText()
  cat(unlist(first_review_writer), ":", unlist(new_review_writer), "\n")
  if(unlist(first_review_writer) == unlist(new_review_writer)){
    cat("종료","\n")
    break
  }
}

cat(length(hotel_review), "개의 리뷰 추출\n")
write(hotel_review, "naverhotel.txt")


library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()

url<-'https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2'
remDr$navigate(url)
Sys.sleep(3)

pageLink <- NULL
reple <- NULL


# 리뷰을 한 페이지 단위로 출력 
repeat{
  doms <- remDr$findElements(using = "css selector", "div.review_desc > p")
  reple_v <- sapply(doms, function (x) {x$getElementText()})
  reple <- append(reple, unlist(reple_v))
  Sys.sleep(1)
  
  
  # click 이벤트 발생
  pageLink <- remDr$findElements(using='css',"div.review_ta.ng-scope > div.paginate > a.direction.next")
  
  nextpage <- remDr$findElements(using='css selector',"div.review_ta.ng-scope > div.paginate > a.direction.next.disabled")
  
  # '다음'버튼이 disabled이면 list에 해당 element값을 하나 리턴하므로 length가 1이됨.
  if(length(nextpage) == 0){
    pageLink[[1]]$clickElement()
    Sys.sleep(2)
  }else{
    break;
  }
}

library(rJava)
library(RJDBC)
library(DBI) 

drv <- JDBC(driverClass = 'org.mariadb.jdbc.Driver', 'mariadb-java-client-2.6.2.jar')
conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work', 'scott', 'tiger')# JDBC URL

#(1)
head(iris)
str(iris)

#(2)
names(iris) <- c("slength", "swidth", "plength", "pwidth", "species")

#(3)
dbWriteTable(conn,"iris", iris)

#(4)
iris_all <- dbReadTable(conn, 'iris')
iris_all

#(5)
query <- "select * from iris where species = 'setosa'"
iris_setosa <- dbGetQuery(conn, query)
iris_setosa

#(6)
query <- "select * from iris where species = 'versicolor'"
iris_versicolor <- dbGetQuery(conn, query)
iris_versicolor

#(7)
query <- "select * from iris where species = 'virginica'"
iris_virginica <- dbGetQuery(conn, query)
iris_virginica

#(8)
product <- read.table("data/product_click.log")
productdf <- data.frame(product)

#(9)
names(productdf) <- c("clicktime", "pid"); head(productdf)

#(10)
dbWriteTable(conn,"productlog", productdf)

#(11)
query <- "select * from productlog where pid = 'p003'"
p003 <- dbGetQuery(conn, query)
p003

#(12)
emp <- read.csv("data/emp.csv")
emp
#(13)
dbWriteTable(conn, "emp", emp)

#(14)
query <- "select * from emp order by sal desc"
result1 <- dbGetQuery(conn, query)
result1

#(15)
query <- "select * from emp order by hiredate asc"
result2 <- dbGetQuery(conn, query)
result2

#(16)
query <- "select * from emp where sal >= 2000"
result3 <- dbGetQuery(conn, query)
result3

#(17)
query <- "select * from emp where (sal >= 2000 && sal < 3000)"
result4 <- dbGetQuery(conn, query)
result4


##########

df <- data.frame(name=c(NA, 'unico', 'kjh'), score=as.character(c(100, 200, NA)))
dbRemoveTable(conn,"imsi")
dbWriteTable(conn, "imsi", df)
dbReadTable(conn, "imsi")

# sapply() 함수 활용 실습

v <- sample(1:26, 10)
length(v)

random_alpha <- function(x){
  return(LETTERS[x])
}

result <- sapply(v, random_alpha)
result

# gsub()를 활용한 텍스트 데이터 변환과 삭제

lines_memo <- readLines("data/memo.txt",encoding="UTF-8")

lines_memo <- lines_memo[nchar(lines_memo) > 0]

memo_new <- NULL

# 당신의 믿음은 &곧 당신의 생각이 되고, 당신의 $생각은 곧 당신이 내뱉는 !말이 되고, #당신이 내뱉는 말은 곧 당신의 행동이 되고, 당신의 행동은 곧 당신의 습관이 되고, @당신의 습관은 곧 당신의 가치관이 되고, 당신의 가치관은 곧 %당신의 운명이 된다.
# 당신의 믿음은 곧 당신의 생각이 되고, 당신의 생각은 곧 당신이 내뱉는 말이 되고, 당신이 내뱉는 말은 곧 당신의 행동이 되고, 당신의 행동은 곧 당신의 습관이 되고, 당신의 습관은 곧 당신의 가치관이 되고, 당신의 가치관은 곧 당신의 운명이 된다.
cline <- gsub("[&$!#@%]", "", lines_memo[1])

memo_new <- append(memo_new, cline)

# 중요한 일을 절대 e메일로 보내지 마라!
# 중요한 일을 절대 E메일로 보내지 마라!  



#cline <- gsub("[[:lower:]]", "E", lines_memo[2]) #안되겠지..

cline <- gsub("e", "E", lines_memo[2])

memo_new <- append(memo_new, cline)

# 가장 훌륭한 일은 1모험과 2도전정신으로 이루어진다.
# 가장 훌륭한 일은 모험과 도전정신으로 이루어진다.
cline <- gsub("[[:digit:]]", "", lines_memo[3])
cline <- gsub("[0-9]", "", lines_memo[3])
cline <- gsub("[4657890123]", "", lines_memo[3])
cline <- gsub("\\d", "", lines_memo[3])

memo_new <- append(memo_new, cline)


# 남들이 나와 같지 R 않다는 Analysis점을 Big인정Data하라.
# 남들이 나와 같지 않다는 점을 인정하라.
cline <- gsub("[[:lower:][:upper:]]", "", lines_memo[4])
#gsub("[[:alpha:]]", "", lines_memo[4])

memo_new <- append(memo_new, cline)

# 매!일! 12아침 34삶의 56목표를 78생각하며 <일어>나라.
# 매일 아침 삶의 목표를 생각하며 일어나라.
cline <- gsub("[!><0-9]", "", lines_memo[5])

memo_new <- append(memo_new, cline)

# 위대한 일을 하는 유일한 방법은 바로 당신이 하는 일을 사랑하는 것입니다.
# 위대한일을하는유일한방법은바로당신이하는일을사랑하는것입니다.
cline <- gsub(" ", "", lines_memo[6])

memo_new <- append(memo_new, cline)

# YOU 타협(정착)하지 마세요. 왜냐하면, 당신의 마음이 하는 모든 것이 그렇듯이, 그 일을 찾게 되면 당신은 마음으로 알게 될 겁니다.  OK?
# you 타협(정착)하지 마세요. 왜냐하면, 당신의 마음이 하는 모든 것이 그렇듯이, 그 일을 찾게 되면 당신은 마음으로 알게 될 겁니다. ok?
cline <- gsub("YOU", "you", lines_memo[7])
cline <- gsub("OK", "ok", cline)

memo_new <- append(memo_new, cline)
write(memo_new,"data/memo_new.txt")


txt <- readLines("C:/Rexam/memo.txt", encoding="UTF-8")
txt[1] <- gsub("[[:punct:]]", "", txt[1])
txt[2] <- gsub("[[:lower:]]", "E" , txt[2])
txt[3] <- gsub("[[:digit:]]", "", txt[3])
txt[4] <- gsub("[A-z]", "", txt[4])
txt[5] <- gsub("[[:punct:][:digit:]]", "", txt[5])
txt[6] <- gsub(" ", "", txt[6])
txt[7] <- gsub("YOU", "you", txt[7])
txt[7] <- gsub("OK", "ok", txt[7])

write.table(txt, sep='\n', file="C:/Rexam/memo_new.txt")

# 날짜 데이터, 문자열 데이터 관련 실습

# 문제1
myday<-weekdays(as.POSIXlt("2000-06-29"))
print(paste0("유니코는 ",myday,"에 태어났어요"))

myday<-weekdays(as.Date("2000-06-29"))
print(paste0("유니코는 ",myday,"에 태어났어요"))

cname <- '유니코'
weekDayBirth <- format(as.Date("20000226", "%Y%m%d"), "%a")
resultStr <- paste(cname, " 은 ", weekDayBirth, "요일에 태어났어요",sep="")
resultStr

# 문제2
current<-Sys.Date()
mybirthday<-as.Date("2020-01-01")
passed<-current-mybirthday
passed_day<-gsub("[[:upper:][:lower:]]",'',passed)

print(paste0(format(current,'오늘은 %Y년 %m월 %d일 이고 '),
             "내가 태어난지 ",passed_day,"일째되는 날이당"))


todayStr <- format(Sys.Date(),'오늘은 %Y년 %m월 %d일 이고')
diffday <- Sys.Date() - as.Date("20200101", "%Y%m%d")

#str(diffday)
#unclass(diffday)
#units(diffday) # attr을 보여줌

livedDays <- unclass(diffday)[1]
resultStr <- paste(todayStr, " 내가 태어난지 ", livedDays, "일째되는 날이당",sep="")
resultStr



# 문제3
current<-Sys.time()
current
format(current,"%Y년 %m월 %d일 %H시 %M분 %S초")


resultStr <- format(Sys.time(),'%Y년 %m월 %d일 %H시 %M분 %S초')
resultStr

# 문제4
txt<-c('12/25/2020 23:59:59', '1/25/2021 23:59:59', '2/25/2021 23:59:59')
df<-data.frame(txt)
df$txt<-as.POSIXlt(strptime(txt, "%m/%d/%Y %H:%M:%S"))
print(df$txt)

df$txt<-strptime(txt, "%m/%d/%Y %H:%M:%S")
print(df$txt)
str(df)


datetime <- c('12/25/2020 23:59:59', '1/25/2021 23:59:59', '2/25/2021 23:59:59')
datetimeDf <- data.frame(datetime)
POSIXltList <- strptime(datetimeDf$datetime, format="%m/%d/%Y %H:%M:%S")
POSIXltList
str(POSIXltList)

# 문제5
start<-as.Date("2020-06-01")
end<-as.Date("2020-06-07")
day<-seq(start,end,1)
format(day,"%a-%m%d")




oneWeek <- seq(as.Date("2020-06-01"), as.Date("2020-06-07"), 1)
resultStr <-paste(format(oneWeek,'%a'),format(oneWeek,'%m%d'),sep="-")
resultStr

a <- seq(20200601,20200607,1);
a <-as.character(a)
datea <- as.Date(a, format="%Y%m%d")
format(datea, format="%a-%m%d")

# 문제6
v1<-c("Happy","Birthday","to","You")
length(v1)
sum(nchar(v1))

v1 <- c('Happy', 'Birthday', 'to', 'You')
sum(nchar(v1))

# 문제7
txt<-c(paste(v1,collapse =" "))
length(txt)
nchar(txt)


resultStr <- paste(v1, collapse = " ")
resultStr
length(resultStr)
nchar(resultStr)

# 문제8
paste(LETTERS[c(1:10)],c(1:10))
paste(LETTERS[c(1:10)],c(1:10),sep='')
paste0(LETTERS[c(1:10)],c(1:10))

vRange <- seq(1, 10)
resultStr1 <- paste(LETTERS[vRange], vRange, sep = " ")
resultStr2 <- paste(LETTERS[vRange], vRange, sep = "")
resultStr1; resultStr2

# 문제9
txt<-c("Good Morning")
txt2<-unlist(strsplit(txt,split =' '))
strsplit(txt2,split=" ")


vStr <- 'Good Morning'
vunlistStr <- unlist(strsplit(vStr, " "))
resultStr <- strsplit(vunlistStr, " ")
resultStr

# 문제10
(txt<-c("Yesterday is history, tommrrow is a mystery, today is a gift!", 
       "That's why we call it the present – from kung fu Panda"))
(txt<-gsub("[,–]",'',txt))
# 다중 공백 제거
(txt<-gsub("\\s+",' ',txt)) 
word<-strsplit(txt,split=' ')
word



vStr <- c("Yesterday is history, tommrrow is a mystery, today is a gift!",
          "That's why we call it the present – from kung fu Panda")
vStr <- gsub("[,–]", "", vStr)
vStr <- unlist(strsplit(vStr, " "))
resultStr <- vStr[nchar(vStr) > 0]
resultStr

# 문제11
ssn<-c("941215-1234567","850605-2345678","760830-1357913")
substr(ssn, nchar(ssn)-6, nchar(ssn))<-"*******"
print(ssn)


ssn  <- c("941215-1234567", "850605-2345678", "760830-1357913")
masking <- function(x) {
  sx <- substr(x, 1, 7)
  result <- paste(sx, "*******", sep='')
  return(result)
}
resultStr <- sapply(ssn, masking)
resultStr


# 문제12
s1<-"@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."

#(1)
r1<-gsub("[가-힣]","",s1)
print(r1)

#(2)
r2<-gsub("[[:punct:]]",'',s1)
print(r2)

#(3)
r3<-gsub("[[:punct:]]|[가-힣]",'',s1)
print(r3)

#(4)
r4<-gsub("100","백",s1)
print(r4)


s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r1 <- gsub("[가-힣]", "", s1)
r2 <- gsub("[[:punct:]]", "", s1)
# r3 <- gsub("[[가-힣][:punct:]]", "", s1)    # 안됨 ㅠㅠ
r3p <- gsub("[가-힣]", "", s1)
r3 <- gsub("[[:punct:]]", "", r3p)
r4 <- gsub("100", "백", s1)
s1; r1; r2; r3; r4





#문제1


# 기본 시각화 실습
drv <- JDBC(driverClass = 'org.mariadb.jdbc.Driver', 'mariadb-java-client-2.6.2.jar')
conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work', 'scott', 'tiger')
library(showtext)
showtext_auto()
font_add(family = "cat", regular = "fonts/HoonWhitecatR.ttf")
font_add(family = "dog", regular = "fonts/THEdog.ttf")
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")

data1 <- dbReadTable(conn, 'productlog')
(data2 <- table(data1$pid))

# 문제 1
png(filename="clicklog1.png", height=400, width=700, bg="white")
par(mar=c(5,5,5,5), mfrow=c(1,1))
barplot(data2, col=terrain.colors(10), main="세로바 그래프 실습", ylab="클릭수",
        xlab="상품ID", ylim=c(0,100))
dev.off()

# 문제 2
data3 <- data1$clicktime
data3_hour <- substr(data3, 9, 10)
table_data3 <- table(data3_hour)
length(table_data3)


names(table_data3)

piename <- paste(as.integer(names(table_data3)), "~",as.integer(names(table_data3)) +1, sep='')
names(table_data3) <- piename
pie(table_data3, main="파이그래프 실습", col=rainbow(17))

dev.copy(png, "clicklog2.png")
dev.off()

str(data1)
clicktime <- as.POSIXlt(as.character(data1$clicktime),format="%Y%m%d%H%M")
clickhour <- format(clicktime, "%H")
table_data3 <- table(data3_hour)
names(table_data3)
piename <- paste(as.integer(names(table_data3)), "~",as.integer(names(table_data3)) +1, sep='')
names(table_data3) <- piename
pie(table_data3, main="파이그래프 실습", col=rainbow(17))

# 문제3

# 1.테이터 정리

record <- read.table("data/성적.txt", header=TRUE)
sub.record <- record[,3:5]

# 2.차트 그리기
boxplot(sub.record, col=rainbow(3), axes=F)
axis(1, at=1:3, lab=names(sub.record), family="maple")
axis(2, at=seq(2, 10, 2), family="maple")
title("과목별 성적 분포", family="maple", cex.main=1.5, col.main="orange")
box()

# 3.이미지저장
dev.copy(png, 'clicklog3.png')
dev.off()


# dplyr 패키지 실습(1)

library(rJava)
library(RJDBC)
library(DBI)
library(dplyr)

drv <- JDBC(driverClass = 'org.mariadb.jdbc.Driver', 'mariadb-java-client-2.6.2.jar')
conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work', 'scott', 'tiger')

emp <- dbReadTable(conn, 'emp')

# 문제0
emp %>%
  mutate(comm = ifelse(comm < 0, NA, comm)) -> emp

emp %>%
  mutate(mgr = ifelse(mgr < 0, NA, mgr)) -> emp



# 문제1
emp %>%
  filter(job=="MANAGER")

# 문제2
emp %>%
  select(empno, ename, sal)

# 문제3
emp %>%
  select(-empno)

# 문제4
emp %>%
  select(ename, sal)

# 문제5
emp %>%
  group_by(job) %>%
  tally()

emp %>%
  group_by(job) %>%
  summarise(n=n())

emp %>%
  count(job)

# 문제6
emp %>%
  filter(sal>=1000 & sal<=3000) %>%
  select(ename, sal, empno)

# 문제7
emp %>%
  filter(job!="ANALYST") %>%
  select(ename, job, sal)

# 문제8
emp %>%
  filter(job=="SALESMAN" | job=="ANALYST") %>%
  select(ename, job)

emp %>%
  filter(job %in% c("SALESMAN","ANALYST")) %>%
  select(ename, job)

# 문제9
emp %>% group_by(deptno) %>% 
  summarise(sum_sal = sum(sal))



# 문제10
emp %>%
  arrange(sal)

# 문제11
emp %>%
  arrange(desc(sal)) %>%
  head(1)

# 문제12
emp %>%
  rename(commrate = comm,
         salary = sal) -> empnew

empnew <- emp %>%
  rename(commrate = comm,
         salary = sal)


empnew
emp

# 문제13
emp %>%
  count(deptno) %>%
  arrange(n) %>%
  tail(1) %>%
  select(deptno) 


# 문제14 #글자수세는 함수 nchar()
emp %>% mutate(enamelength=nchar(ename)) %>%
  arrange(enamelength) %>% select(ename)

# 문제15
emp %>% filter(comm != "NA") %>% nrow()
emp %>% filter(!is.na(comm)) %>% summarise(n=n())
emp %>% filter(!is.na(comm)) %>% tally
emp %>% filter(!is.na(comm)) %>% count


# dplyr 패키지 실습(2)


######### 문제1 #########
mpg <- as.data.frame(ggplot2::mpg)

# 1-1
str(mpg)

# 1-2
dim(mpg)

# 1-3
# head(mpg, 10)
mpg %>% head(10)

# 1-4
# tail(mpg, 10)
mpg %>% tail(10)

# 1-5
View(mpg)

# 1-6
summary(mpg)

# 1-7
# table(mpg$manufacturer)
mpg %>% 
  group_by(manufacturer) %>% 
  tally

# 1-8
mpg %>% 
  group_by(manufacturer, class) %>% 
  summarise(mf_n=n())


######### 문제2 #########
# 2-1
mpg <- mpg %>% rename(city = cty, highway = hwy)

# 2-2
mpg %>% head


######### 문제3 #########
# 3-1
midwest <- as.data.frame(ggplot2::midwest)
str(midwest)
dim(midwest)
View(midwest)
# 3-2
midwest %>% rename(total=poptotal,asian=popasian) -> midwest
# 3-3
midwest %>% mutate(prob_asian = asian/total*100) -> midwest
# 3-4
midwest %>% 
  mutate(mean_asian=mean(prob_asian),
     size_asian=ifelse(prob_asian > mean_asian,"large","small"))

######### 문제4 #########
# 4-1
mpg <- as.data.frame(ggplot2::mpg)
mpg %>% 
  mutate(catDispl = ifelse(displ <= 4, "배기량4이하", "배기량5이상")) %>%
  group_by(catDispl) %>% summarise(mean_hwy = mean(hwy))


# 4-2
mpg %>%
  filter(manufacturer %in% c("audi", "toyota")) %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) 


# 4-3
mpg %>% 
  filter(manufacturer %in% c("chevrolet","ford","honda")) %>% 
  group_by(manufacturer) %>% 
  summarise(mean_hwy=mean(hwy))


######### 문제5 #########
# 5-1
mpg %>% 
  select(class,city) -> mpg_sub
head(mpg_sub)

# 5-2
mpg %>% 
  filter(class %in% c("suv","compact")) %>% 
  group_by(class) %>% 
  summarise(mean_cty=mean(city))



######### 문제6 #########
# audi 모델 중 hwy연비가 좋은 모델

mpg <- as.data.frame(ggplot2::mpg)

mpg %>% filter(manufacturer == 'audi') %>%
  group_by(model) %>% summarise(mean_hwy_audi = mean(highway)) %>%
  arrange(desc(mean_hwy_audi))



# audi중 hwy연비가 좋은 자동차의 데이터

mpg %>% filter(manufacturer == 'audi') %>%
  arrange(desc(hwy)) %>% head(5)


# dplyr 패키지 실습(3)

library(dplyr)
str(ggplot2::mpg)
mpg <- as.data.frame(ggplot2::mpg)

#7
#7-1
mpgcopy <- mpg
mpgcopy <- mpgcopy %>% mutate(total = cty+hwy)
head(mpgcopy)

#7-2
mpgcopy <- mpgcopy %>% mutate(mean = total/2)
head(mpgcopy)

#7-3
mpgcopy %>% arrange(desc(mean)) %>% head(3)

#7-4
mpg %>% mutate(total = cty+hwy, mean = total/2) %>% 
  arrange(desc(mean)) %>% head(3)
#----------------------------------------


#8
#8-1
mpg %>% group_by(class) %>% summarise(mean_class = mean(cty))

#8-2
mpg %>% group_by(class) %>% 
  summarise(mean_class = mean(cty)) %>% 
  arrange(desc(mean_class))

#8-3
mpg %>% group_by(manufacturer) %>% 
  summarise(mean_hwy = mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

#8-4
mpg %>% filter(class == "compact") %>% 
  group_by(manufacturer) %>% 
  count(manufacturer) %>% 
  arrange(desc(n))
mpg %>% 
  filter(class=="compact") %>% 
  group_by(manufacturer) %>% 
  summarise(commpact=n()) %>% 
  arrange(desc(commpact))
#----------------------------------------


#9
fuel <- data.frame(fl= c("c","d","e","p","r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22)
                  )
fuel
#9-1
mpg <- left_join(mpg, fuel, by = "fl")

#9-2
mpg %>% select("model", "fl", "price_fl") %>% head(5)
#----------------------------------------

View(mpg)

#10
#10-1
midwest<-as.data.frame(ggplot2::midwest)
midwestchild<-midwest %>% 
  mutate(childratio=(poptotal-popadults)*100/poptotal)

midwestchild %>% 
  select(county,popadults,poptotal,childratio) %>% 
  head(10)



#10-2
midwestchild %>% 
  arrange(desc(childratio)) %>% 
  head(5)

#10-3
midwestchild %>% 
  mutate(childrank=ifelse(childratio>=40,'large',ifelse(childratio>=30,'middle','small'))) %>% 
  group_by(childrank) %>% 
  summarise(county.cnt=n())

#10-4
midwestchild %>% 
  mutate(asianratio=(popasian*100)/poptotal) %>% 
  arrange(asianratio) %>% 
  select(state,county,asianratio) %>% 
  head(10)
#----------------------------------------


#11
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA
#11-1
table(is.na(mpg$drv))
table(is.na(mpg$hwy))

#11-2
mpg %>% filter(!is.na(hwy)) %>% 
  group_by(drv) %>% summarise(drv_hwy = mean(hwy))
#----------------------------------------


#12
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10, 14, 58, 93), "drv"] <- "k"
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 4, 39, 42)
#12-1
table(mpg$drv)
mpg$drv <- ifelse(mpg$drv %in% c("k"), NA, mpg$drv)
table(mpg$drv)

#12-2
boxplot(mpg$cty)
boxplot(mpg$cty)$stats
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
boxplot(mpg$cty)

View(mpg)

#12-3
mpg %>% filter(!is.na(drv) & !is.na(cty)) %>% 
  group_by(drv) %>% 
  summarise(drv_cty = mean(cty, na.rm = T))