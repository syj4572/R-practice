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

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 2
  
n1 <- c(1,2,3)
n2 <- c(4,5,6)
n3 <- c(7,8,9)
num <- c(n1,n2,n3)
mat2 <- cbind(n1,n2,n3) 
matrix(num, nrow = 3)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 3
  
m3 <- matrix(1:9, nrow = 3, byrow=T)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
# 문제 4
  
m4 <- m3 
colnames(m4) <- c("col1","col2","col3")
rownames(m4) <- c("row1","row2","row3")

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``

# 문제 5

alpha <- matrix(letters[1:6], nrow = 2)
alpha2 <- rbind(alpha, letters[24:26])
alpha3 <- cbind(alpha, letters[c(19,16)])

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 문제 6
  
a <- array(1:24, dim=c(2,3,4))
print(a[2,3,4])
print(a[2,,])
print(a[,1,])
print(a[,,3])
print(a <- a+100)
print(a[,,4]*100)
print(a[1,-1,]); print(a[1,c(2,3),])
a[2,,2] <- a[2,,2] + 100
a[,,1] <- a[,,1]-2
a <- a * 10
rm(a) # a 삭제
ls() # 확인


  

