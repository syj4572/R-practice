#문제 1

v1 <- 1:10
v2 <- v1*2
max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)
v3 <- v2[-5]
print(v1)
print(v2)
print(max_v)
print(min_v)
print(avg_v)
print(sum_v)
print(v3)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#문제 2
  
v4 <- seq(1, 10, 2)
v5 <- rep(1, 5)
v6 <- rep(1:3, 3)
v7 <- rep(1:4, each=2)
v4;v5;v6;v7

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#문제 3

nums <- sample(1:100, 10)
print(sort(nums, decreasing = F))
print(sort(nums, decreasing = T))
print(nums[nums > 50])
print(nums[nums <= 50])
print(which.max(nums))
print(which.min(nums))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
#문제 4
  
v8 <- seq(1, 10, 3)
v8 <- which(v8[4])
names(v8) <- LETTERS[which(v8<11)]

names(v8) <-LETTERS[1:4]
names(v8) ; v8

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
#문제 5  

score <- sample(1:20, 5)
myFriend <- c('둘리', '또치', '도우너', '희동', '듀크')

print(paste(score, myFriend, sep="-"))
print(myFriend[which.max(score)])
print(myFriend[which.min(score)])
print(myFriend[score > 10])

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
#문제 6
  
count <- sample(1:100, 7, replace=F)
week.korname <- c('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일')

print(paste(week.korname, count, sep=":"))
print(week.korname[which.max(count)])
print(week.korname[which.min(count)])
print(week.korname[count > 50])


