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

# 문제 4
  
vmSum <- function(p){
  evenSum <- 0
  oddSum <- 0
  index <- 1
  if (is.vector(p) && !is.list(p)){
    if (is.numeric(p)){
      for (i in p){
        if (index %% 2 == 0){
          evenSum <- evenSum + i
          index + 1
        }else{
          oddSum <- oddSum + i
          index + 1
        }
      }
      else{
      result <- min(p, na.rm=T)
      warning("NA를 최저값으로 변경하여 처리함!!")
      }
    return(list(result))
  }
  else 
    return("벡터만 처리 가능!")
  }
}


vmSum(list(1,'a',3))
vmSum(c('a','b','c'))
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
  if (!is.na(data)){
      result <- c(data)
      return(result)
  }
  else{
    return(NA)
  }
}

createVector1(1,'a',NA,4)
createVector1(1,2,'a','b')

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 7
  

  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 8