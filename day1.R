# R 공부를 열심히 하자
v1 <- 1:10
v1 = 1:10
1:10 -> v1
print(v1)
v1
1:100
100:1
(v2 <- v1 + 100); v2
v3 <- v1 * 10; v3
ls()
v4 <- c(10, 5, 7, 4, 15, 1)
v5 <- c(100, 200, 300, '사백')
seq(1, 10)
seq(1, 10, 2)
seq(0, 100, 5)

# 소스1

rep(1, 100)
rep(1:3, 5)
rep(1:3, times=5) # 키워드 파라미터
rep(1:3, each=5)
?rep  #help()

LETTERS
letters
month.name
month.abb
pi

LETTERS;letters;month.name;month.abb;pi

LETTERS[1]; LETTERS[c(3,4,5)]
LETTERS[3:5]; LETTERS[5:3]
LETTERS[-1]; LETTERS[c(-2,-4)]

length(LETTERS)
length(month.name)
length(pi)


x <- c(10,2,7,4,15)
x
print(x)
class(x)
rev(x)
range(x)
sort(x)
sort(x, decreasing = TRUE)
sort(x, decreasing = T)
order(x)
#x <- sort(x)


x[3] <- 20
x
x + 1
x <- x + 1
max(x);min(x);mean(x);sum(x)
summary(x)

x[c(2,4)] # x[2], x[4]
x[c(F,T,F,T,F)] # x[c(T,F)] 
x > 5
x[x > 5] 
x[x > 5 & x < 15] # x[x > 5 && x < 15]
#x[x > 5 | x < 15]

names(x)
names(x) <- LETTERS[1:5]
names(x) <- NULL
x[2];x["B"]; #x[B()]


# &, &&
c(T, T, F, F) & c(T, F, T, F)
c(T, T, F, F) | c(T, F, T, F)
c(T, T, F, F) && c(T, F, T, F)
c(T, T, F, F) || c(T, F, T, F)


ls()
rm(x)
x
class(x)

rainfall <- c(21.6, 23.6, 45.8, 77.0, 
              102.2, 133.3,327.9, 348.0, 
              137.6, 49.3, 53.0, 24.9)
rainfall > 100
rainfall[rainfall > 100]
which(rainfall > 100)
month.name[which(rainfall > 100)]
month.abb[which(rainfall > 100)]
month.korname <- c("1월","2월","3월",
                   "4월","5월","6월",
                   "7월","8월","9월",
                   "10월","11월","12월")
month.korname[which(rainfall > 100)]
which.max(rainfall)
which.min(rainfall)
month.korname[which.max(rainfall)]
month.korname[which.min(rainfall)]


sample(1:20, 3)
sample(1:45, 6)
sample(1:10, 7)
sample(1:10, 7, replace=T)

paste("I'm","Duli","!!")
paste("I'm","Duli","!!", sep="")
paste0("I'm","Duli","!!")

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie","Juice", "Cake")
paste(fruit, food)

paste(fruit, food, sep="")
paste(fruit, food, sep=":::")
paste(fruit, food, sep="", collapse="-")
paste(fruit, food, sep="", collapse="")
paste(fruit, food, collapse=",")

# 소스 2

# matrix 실습
x1 <-matrix(1:8)
x1
x1 <-matrix(1:8, nrow = 2)
x1
x1<-x1*3
x1

sum(x1); min(x1);max(x1);mean(x1)

x2 <-matrix(1:8, nrow = 3)
x2
x2 <-matrix(1:9, nrow = 3)
x2

(chars <- letters[1:10])

mat1 <-matrix(chars)
mat1; dim(mat1)
matrix(chars, nrow=1)
matrix(chars, nrow=5)
matrix(chars, nrow=5, byrow=T)
matrix(chars, ncol=5)
matrix(chars, ncol=5, byrow=T)
matrix(chars, nrow=3, ncol=5)
matrix(chars, nrow=3)


vec1 <- c(1,2,3)
vec2 <- c(4,5,6)
vec3 <- c(7,8,9)
mat1 <- rbind(vec1,vec2,vec3); mat1
mat2 <- cbind(vec1,vec2,vec3); mat2
mat1[1,1]
mat1[2,];mat1[,3]
mat1[1,1,drop=F]
mat1[2,,drop=F];mat1[,3,drop=F]

rownames(mat1) <- NULL
colnames(mat2) <- NULL
mat1;mat2
rownames(mat1) <- c("row1","row2","row3")
colnames(mat1) <- c("col1","col2","col3")
mat1
ls()
mean(x2)
sum(x2)
min(x2)
max(x2)
summary(x2)

mean(x2[2,])
sum(x2[2,])
rowSums(x2); colSums(x2)

apply(x2, 1, sum); apply(x2, 2, sum)  
?apply
apply(x2, 1, max)
apply(x2, 1, min)
apply(x2, 1, mean)

apply(x2, 2, max)
apply(x2, 2, min)
apply(x2, 2, mean)

#Array 실습
a1 <- array(1:30, dim=c(2,3,5))
a1

a1[1,3,4]
a1[,,3]
a1[,2,]
a1[1,,]


# factor 실습

score <- c(1,3,2,4,2,1,3,5,1,3,3,3)
class(score)
summary(score)

f_score <- factor(score)
class(f_score)
f_score
summary(f_score)
levels(f_score)

plot(score)
plot(f_score)


data1 <- c("월","수","토","월",
           "목","화")
data1
class(data1)
summary(data1)
day1 <- factor(data1)
day1
class(day1)
summary(day1)
levels(day1)

week.korabbname <- c("일", "월", "화",
                     "수", "목", "금", "토")
day2 <- factor(data1, 
               levels=week.korabbname)
day2
summary(day2)
levels(day2)



btype <- factor(
  c("A", "O", "AB", "B", "O", "A"), 
  levels=c("A", "B", "O"))
btype
summary(btype)
levels(btype)

gender <- factor(c(1,2,1,1,1,2,1,2), 
                 levels=c(1,2), 
                 labels=c("남성", "여성"))
gender
summary(gender)
levels(gender)


