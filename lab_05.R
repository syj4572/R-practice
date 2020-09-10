# 문제 1

grade <- sample(1:6, 1)
if (grade == 1 | grade == 2 | grade == 3){
  cat(grade,"학년은 저학년입니다","\n")
}else if (grade == 4 | grade == 5 | grade == 6){
  cat(grade,"학년은 고학년입니다","\n")
}

# 다른 풀이
grade <- sample(1:6, 1)
if (grade >= 1 & grade <= 3){
  cat(grade,"학년은 저학년입니다")
}else{
  cat(grade,"학년은 고학년입니다",)
}

grade <- sample(1:6, 1)
if (grade >= 1 && grade <= 3){   #비교할게 한 개일때는 && 가능
  cat(grade,"학년은 저학년입니다")
}else{
  cat(grade,"학년은 고학년입니다",)
}

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 2

choice <- sample(1:5, 1)
a <- 300
b <- 50

result <- 0;
if(choice == 1){
  result <- a + b
}else if(choice == 2){
  result <- a - b
}else if(choice == 3){
  result <- a * b
}else if(choice == 4){
  result <- a / b
}else{
  result <- a %% b
}
cat("결과값 : ", result,"\n")

#switch로 해결
choice <- sample(1:5, 1)
result <- switch(EXPR=choice,
                 a + b,a - b,a * b,a / b,a %% b)
cat("결과값 :",result, sep="")


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 3
  
count <- sample(3:10, 1)
deco <- sample(1:3,1)

if(deco == 1){
  check <- 0
  repeat{
    print('*')
    check <- check+1
    if (check >= count) {
    break
    }
  }
}else if(deco == 2){
  check <- 0
  repeat{
    print('$')
    check <- check+1
    if (check >= count) {
      break
    }
  }
}else{
  check <- 0
  repeat{
    print('#')
    check <- check+1
    if (check >= count) {
      break
    }
  }
}

# 다른 풀이
count <- sample(3:10, 1)
deco <- sample(1:3,1)
if (deco==1){
  cat(rep('*',times=count),"\n")
}else if (deco==2){
  cat(rep('$',times=count),"\n")
}else if (deco==3){
  cat(rep('#',times=count),"\n")
}

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 4

num <- 0
score <- sample(0:100, 1)
if (score >=90){
  num <- 1
}else if (score >=80){
  num <- 2
}else if (score >=70){
  num <- 3
}else if (score >=60){
  num <- 4
}else {
  num <- 5
}
num

level <- switch(EXPR=as.character(num),
                   "1"="A등급", #비교값 생략 가능
                   "2"="B등급",
                   "3"="C등급",
                   "4"="D등급",
                   "F등급")
cat(score,"점은 ",level,"입니다\n",sep="")

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 5

alpha <- paste(LETTERS,letters)
print(alpha)



  



  
  
  
  
  

  
  
  
  
  