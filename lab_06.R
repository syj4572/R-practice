# 문제 1

exam1 <- function() {
  alpha <- paste(LETTERS,letters, sep="")
  return(alpha)
}

exam1()  

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 2
  
exam2 <- function(x) {
  sum <- 0;
  for(i in 1:x){
    if(is.numeric(i)) 
      sum <- sum + i
  }
  return(sum)
}

exam2() # 에러
exam2("에러")
exam2(3)
exam2(5)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 3
  
exam3 <- function(x,y) {
  result <- 0;
  if(x > y)
    result <- x+y
  else if(y > x)
    result <- y-x
  else
    result <- 0
  return(result)
}

exam3()
exam3(3)
exam3(10,20)
exam3(20,5)
exam3(5,30)
exam3(6,3)
exam3(3,3)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 문제 4
  
exam4 <- function(x,y,z) {
  if(y == '+'){
    result <- x + z
  }else if(y == '-'){
    result <- x - z
  }else if(y == '*'){
    result <- x * z
  }else if(y == '%/%'){
    if(x == 0)
      result <- "오류1"
    else if(z == 0)
      result <- "오류2"
    else
      result <- x%/%z
  }else if(y == '%%'){
    if(x == 0)
      result <- "오류1"
    else if(z == 0)
      result <- "오류2"
    else
      result <- x%%z
  }else
    result <- "규격의 연산자만 전달하세요."
  print(result)
}
  
exam4(8,'+',2)
exam4(8,'-',2)
exam4(8,'*',2)
exam4(8,'%/%',2)
exam4(0,'%/%',2)
exam4(8,'%/%',0)
exam4(8,'%%',2)
exam4(0,'%%',2)
exam4(8,'%%',0)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 5
  
exam5 <- function(x, y='#') {
  if(x>0)
    for(i in 1:x) {
      cat(y)
    }
  #return()
}

exam5(x=5)
exam5(x=3,y='성공?')
exam5(x=-2)


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 6
  
exam6 <- function(...) {
  data <- c(...)
  grade <- c()
  for(i in data) {
    if(is.na(i))
      print("NA는 처리불가")
    else{
      if(i >= 85)
        grade <- "상"
      else if(i >= 70)
        grade <- "중"
      else
        grade <- "하"
      print(paste(i,"점은 ",grade,"등급입니다.", sep=""))
    }
  }
}

exam6(80,50,70,66,NA,35)

