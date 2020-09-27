
# 문제1
v <- sample(1:26, 10)
length(v)

random_alpha <- function(x, wt=T){
  return(LETTERS[x])
}

result <- sapply(v, random_alpha)
result
str(result)


-----------------
  
v <- sample(1:26, 10)
length(v)

random_alpha <- function(x, wt=T){
  paste(x," : ", LETTERS[x])
}

result2 <- sapply(v, random_alpha)
result2
str(result2)



