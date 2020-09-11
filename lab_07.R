# 문제 1 해결

countEvenOdd <- function(p) {
  even <- 0
  odd <- 0
  if (is.numeric(p)){
    for (num in p) {
      if(num %% 2 == 0){
        even <- even + 1
      }else{
        odd <- odd + 1
      }
    }
    return(list(even=even,odd=odd))
  }
}

countEvenOdd(c(1,2,3,4,5,6,7,8,9))
countEvenOdd(c('a','b','c'))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 2 해결
  
vmSum <- function(p){
  sum <- 0;
  if (is.vector(p) && !is.list(p)){
   if (is.numeric(p)){
     for (num in p){
       sum <- sum + num
     }
     return(c(sum))
   }else
     return("숫자 벡터를 전달하숑!")
  }
  else 
    return("벡터만 전달하숑!")
}

vmSum(list(1,'a',3))
vmSum(c('a','b','c'))
vmSum(c(1,2,3,4,5))

    
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 3 해결
  
vmSum2 <- function(p){
  sum <- 0;
  if (is.vector(p) && !is.list(p)){
    if (is.numeric(p)){
      for (num in p){
        sum <- sum + num
      }
    }else
      sum <- 0
      warning("숫자 벡터를 전송하숑!")
    return(c(sum))
  }
  else
    stop("벡터만 전달하숑!")
}

vmSum2(list(1,'a',3))
vmSum2(c('a','b','c'))
vmSum2(c(1,2,3,4,5))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 문제 4 해결
  
vmSum <- function(p){
  evenSum <- 0
  oddSum <- 0
  index <- 1
  if (is.vector(p) && !is.list(p)){
    for (i in p){
      if (is.na(i)){
        i <- min(p, na.rm=T)
        warning("NA를 최저값으로 변경하여 처리함!!")
      }
      if (index %% 2 == 0){
        evenSum <- evenSum + i
        index <- index + 1
      }else{
        oddSum <- oddSum + i
        index <- index + 1
      }
    }
      return(list(evenSum=evenSum,oddSum=oddSum))
  }
  else{
    return("벡터만 처리 가능!")
  }
}
# p 원소를 하나하나 꺼내서 NA 확인하고 NA라면 최소값으로 변경하여 처리
# NA가 아니면 그냥 처리

vmSum(list(1,'a',3))
vmSum(c(1,2,NA,4,5))
vmSum(c(1,2,3,4,5))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 5 해결

myExpr <- function(p){
  if(is.function(p)){
    return(c(num))
  }else
    warning("수행 안할꺼임!!")
}

random <- function(){
  num <- sample(1:45, 6)
}

myExpr(random)
myExpr(c(1,2,3,4))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 6
  
createVector1 <- function(...){
  data <- list(...)
  if( length(data) != 0 ){
    if(any(is.na(data))){
        return(NA)
    }
    result <- c(data)
    return(result)
  }else{
  return() 
  }
}

createVector1()
createVector1(NA)
createVector1(1,'a',NA,4)
createVector1(1,2,'a','b')

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 7
  
createVector2 <- function(...){
  data <- list(...)
  r_numeric <- c()
  r_character <- c()
  r_logical <- c()
  for (i in data){
    if (is.numeric(i)){
      r_numeric <- c(r_numeric,i) 
    }else if(is.character(i)){
      r_character <- c(r_character,i)
    }else if(is.logical(i)){
      r_logical <- c(r_logical,i)
    }
  }
  return(list(s_numeric=r_numeric,
              s_character=r_character,
              s_logical=r_logical
              ))
}

# c(기존 벡터변수, 값) = 기존벡터에 새로운 값이 추가된 새로운 벡터 생성

createVector2(c(1,2,3))
createVector2("a","b",1,2,3,TRUE,F)
  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 8

test1.R <- scan("c:/Rexam/data/iotest1.txt", what="")

x <- sort(test1.R)
y <- sort(test1.R, decreasing = TRUE)
z <- sum(as.numeric(test1.R))
r <- mean(as.numeric(test1.R))

cat("오름차순 :", x, "\n")
cat("내림차순 :", y, "\n")
cat("합 :", z, "\n")
cat("평균 :", r, "\n")

cat("오름차순 :", x, file="c:/Rexam/data/test1.R", append=TRUE, "\n")
cat("내림차순 :", y, file="c:/Rexam/data/test1.R", append=TRUE, "\n")
cat("합 :", z, file="c:/Rexam/data/test1.R", append=TRUE, "\n")
cat("평균 :", r, file="c:/Rexam/data/test1.R", append=TRUE, "\n")

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 9  

test2.R <- scan("c:/Rexam/data/iotest2.txt", what="")
factor(test2.R)
summary(test2.R)
dic <-summary(factor(test2.R))
str(dic)

which.max(dic)
lot <- names(which.max(dic))

paste("가장 많이 등장한 단어는 ",lot," 입니다.")

cat("가장 많이 등장한 단어는", lot, "입니다", file="c:/Rexam/data/test2.R", append=TRUE, "\n")
  
  