
# 1 번

library(ggplot2)

str(ggplot2::mpg)

mpg <- as.data.frame(ggplot2::mpg)

# 1-1

str(mpg)

# 1-2

nrow(mpg)
ncol(mpg)

# 1-3

mpg <- as.data.frame(ggplot2::mpg)
mpg <- mpg %>% head(10)  
mpg

# 1-4

mpg <- as.data.frame(ggplot2::mpg)
mpg <- mpg %>% tail(10)  
mpg

# 1-5

# GUI 환경?

# 1-6

mpg <- as.data.frame(ggplot2::mpg)
mpg <- group_by(mpg) 

# 1-7

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% select (manufacturer)

table(mpg$manufacturer)

# 1-8

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% select (manufacturer,model)

table(mpg$manufacturer)
table(mpg$model)

# 2

mpg <- as.data.frame(ggplot2::mpg)
names(mpg)

# 2-1
#city <- mpg$cty
#mpg <- mpg %>% select(-cty)
#mpg <- mpg %>% mutate(city) # 열 없애고 다시 넣은거라 위치 변경됨

str(cty)
str(city)

city <- NULL

as.character(cty)
as.character(city)

mpg %>% rename(mpg, cty=city) # rename 함수를 활용하려는데 에러



# 2-2
#highway <- mpg$hwy
#mpg <- mpg %>% select(-hwy)
#mpg <- mpg %>% mutate(highway) 

mpg %>% rename(mpg, hwy=highway) # 에러

# 3

# 3-1

midwest <- as.data.frame(ggplot2::midwest)
str(midwest)

# 3-2

names(midwest)

total <- midwest$poptotal
midwest <- midwest %>% select(-poptotal)
midwest <- midwest %>% mutate(total) 

asian <- midwest$popasian
midwest <- midwest %>% select(-popasian)
midwest <- midwest %>% mutate(asian) 

names(midwest)

# 3-3

midwest <- midwest %>% select(total, asian)

midwest <- midwest %>% group_by(total, asian) %>% summarise(percentage = asian/total*100)

# 3-4

midwest <- midwest %>% mutate(midwest = ifelse(percentage > mean(percentage), "large", "small")) 

# 4-1

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% filter(displ <= 4 | displ >= 5)
mpg <- mpg %>% select (manufacturer,model,displ,hwy)
mpg <- mpg %>% group_by(manufacturer,model) %>% summarise(mean_hwy = mean(hwy))
mpg <- mpg %>% arrange(desc(mean_hwy))
mpg <- mpg %>% head(1)
mpg

# 4-2

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% select (manufacturer,model,cty)
mpg <- mpg %>% filter(manufacturer == "audi" |manufacturer == "toyota") 
mpg <- mpg %>% group_by(manufacturer,model) %>% summarise(mean_cty = mean(cty))
mpg <- mpg %>% arrange(desc(mean_cty))
mpg <- mpg %>% head(1)
mpg

# 4-3

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% select (manufacturer,model,hwy)
mpg <- mpg %>% filter(manufacturer == "chevrolet" | manufacturer == "ford" | manufacturer == "honda") 
mpg <- mpg %>% group_by(manufacturer,model) %>% summarise(mean_hwy = mean(hwy))
mpg

# 5-1

mpg <- as.data.frame(ggplot2::mpg)
names(mpg)

new_mpg <- mpg %>% select (class, cty)

# 5-2

new_mpg <- new_mpg %>% filter(class == "suv" | class == "compact") 
new_mpg <- new_mpg %>% group_by(class) %>% summarise(mean_cty = mean(cty))
new_mpg <- new_mpg %>% arrange(desc(mean_cty))
new_mpg <- new_mpg %>% head(1)
new_mpg

# 6

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% select (manufacturer,hwy)
mpg <- mpg %>% filter(manufacturer == "audi")
mpg <- mpg %>% arrange(desc(mpg))
mpg <- mpg %>% head(5)






