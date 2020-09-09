# 문제 1

iris
head(iris)
tail(iris) 
View(iris)
str(iris)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 2
  
x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)
df1 <- data.frame(x,y)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 3

col1 <- c(1,2,3,4,5)
col2 <- c('a','b','c','d','e')
col3 <- c(6,7,8,9,10)
df2 <- data.frame(col1,col2,col3)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 4
  
제품명 <- c('사과','딸기','수박')
가격 <- c(1800,1500,3000)
판매량 <- c(24,38,13)
df3 <- data.frame(제품명,가격,판매량)
str(df3) # 제품명 확인

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 5

print(mean(df3$가격)) # 과일 가격 평균
print(mean(df3$판매량)) # 과일 판매량 평균

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 6

name <- c('Potter','Elas','Gates','Wendy','Ben')
gender <- factor(c('M','F','M','F','M'))
math <- c(85, 76, 99, 88, 40)
df4 <- data.frame(name,gender,math)
str(df4) 
  
# (a)  
df4$stat <- c(76, 73, 95, 82, 35)
str(df4)

# (b)
df4$score <- df4$math + df4$stat
str(df4)

# (c)
df4$grade <- ifelse(df4$score >= 150,"A",
                ifelse(df4$score >= 100,"B",
                    ifelse(df4$score >= 70,"C",
                       ifelse(df4$score < 70,"D"))))
str(df4)

#df4$grade <- ifelse(df4$score >= 150,"A",
#                    ifelse(df4$score >= 100,"B",
#                           ifelse(df4$score >= 70,"C", "D")))
#str(df4)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 7

emp <- read.csv(file.choose())
str(emp)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 8

rownames(emp)
print(emp[c(3,4,5),])
#print(emp[3:5,])
#print(emp[seq(3,5),])

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 9
  
colnames(emp)
print(emp[,-4])

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 10
  
colnames(emp)
print(emp[,2])
print(emp$ename)
print(emp[,"ename"])
print(emp[,"ename",drop=F])
print(emp[,2, drop=F])
print(emp[2])
print(emp["ename"])

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 11

#emp[, c("ename", "sal")]
print(subset(emp,select = c("ename", "sal")))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 12
  
View(emp)
print(subset(emp, select = c("ename","sal","job"), 
                      subset=(emp$job=="SALESMAN")))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 13
  
View(emp)
print(subset(emp, select=c("ename","sal","ename"), 
                            subset=(sal>=1000 & sal<=3000)))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 14

View(emp)  
print(subset(emp, select=c("ename","sal","job"),
                      subset=(!emp$job=="ANALYST")))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 15

View(emp)  
print(subset(emp, select=c("ename","job"),
                  subset=(emp$job=="ANALYST" | emp$job=="SALESMAN")))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 16
  
View(emp) 
print(subset(emp, select=c("ename","sal"), is.na(emp$comm)))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 17
  
View(emp) 
emp <- emp[c(order(sort(emp$sal))),]
rownames(emp) <- NULL
print(emp)

#emp[order(emp$sal),]

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 18
  
nrow(emp) # 행
ncol(emp) # 열
dim(emp)


  

