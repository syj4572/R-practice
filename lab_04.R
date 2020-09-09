# 문제 1

L1 <- list(name="scott",
           sal = 3000
           )
result1 <- L1[[2]] * 2
result1


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 문제 2
  
L2 <- list(
  "scott", c(100, 200, 300)
)
L2

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 3
  
L3 <- list(c(3,5,7), c("A","B","C"))
L3[[2]][1] <- "Alpha"
L3

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 4

L4 <- list(
  alpha = 0:4,
  beta = sqrt(1:5),
  gamma = log(1:5)
)
print(L4[1])
print(L4[[1]] + 10)
print(unlist(L4[1])+10)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 5
  
emp <- read.csv(file.choose())
  
L5 <- list(
  data1 = LETTERS[1:26],
  data2 = emp[1:3,],
  data3 = list(L4)
)

#L5 <- list(
#  data1 = LETTERS,
#  data2 = head(read.csv("data/emp.csv"), n=3),
#  data3 = L4
#)

R <- L5[[1]][1]
R <- L5[[2]]$ename
R <- L5[[3]][[1]]$gamma

#L5[["data1"]][1]
#L5[["data2"]]$ename #L5$data2$ename
#L5[["data3"]][[3]] #L5$data3$gamma
  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 6
  
L6 <- list(
  math = list(95, 90),
  writing = list(90, 85),
  reading = list(85, 80)
)

print(sum(unlist(L6))/length(unlist(L6)))
print(mean(unlist(L6)))