
# 7-1

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% mutate(합산연비변수 = hwy + cty)

# 7-2

mpg <- mpg %>% mutate(평균연비변수 = 합산연비변수/2)

# 7-3

names(mpg)
mpg <- mpg %>% select (model, 평균연비변수)
mpg <- mpg %>% arrange(desc(평균연비변수))
mpg <- mpg %>% head(3)

# 7-4

mpg <- as.data.frame(ggplot2::mpg)
mpg %>%
  mutate(합산연비변수 = hwy + cty) %>%
  mutate(평균연비변수 = 합산연비변수/2) %>%
  select (model, 평균연비변수) %>%
  arrange(desc(평균연비변수)) %>%
  arrange(desc(평균연비변수)) %>%
  head(3)

# 8-1

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% group_by(class) %>% summarise(mean_cty = mean(cty))

# 8-2

mpg <- mpg %>% arrange(desc(mean_cty))

# 8-3

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% group_by(manufacturer) %>% summarise(mean_hwy = mean(hwy))
mpg <- mpg %>% arrange(desc(mean_hwy))
mpg <- mpg %>% head(3)

# 8-4 

mpg <- as.data.frame(ggplot2::mpg)

mpg <- mpg %>% select (manufacturer, class)
mpg <- mpg %>% filter(class == "compact")
mpg <- mpg %>% count(manufacturer, class, sort = TRUE) 
mpg

# 9-1

fuel <- data.frame(fl = c("c","d","e","p","r"),
                   price_fl = c(2.35,2.38,2.11,2.76,2.22),
                   stringsAsFactors = F)
fuel

mpg <- as.data.frame(ggplot2::mpg)
names(mpg)

mpg <- full_join(mpg, fuel, by="fl")
names(mpg)

# 9-2

mpg <- mpg %>% select (model, fl, price_fl)
mpg <- mpg %>% head(5)
mpg

# 10-1

midwest <- as.data.frame(ggplot2::midwest)
names(midwest)

midwest <- midwest %>% mutate(전체인구대비미성년인구백분율 = popadults/poptotal*100)

# 10- 2

names(midwest)
rank <- midwest %>% select (county, 전체인구대비미성년인구백분율)
rank <- rank %>% arrange(desc(전체인구대비미성년인구백분율))
rank <- rank %>% head(5)
rank

# 10-3 (다시)

midwest %>% mutate(등급 = ifelse(전체인구대비미성년인구백분율 >= 40, 전체인구대비미성년인구백분율 >= 30, "large", "middle", "small"))

# 10-4

midwest <- midwest %>% mutate(전체인구대비아시아인인구백분율 = popasian/poptotal*100)
rank2 <- midwest %>% select(state, county, 전체인구대비아시아인인구백분율)
rank2 <- rank2 %>% arrange(전체인구대비아시아인인구백분율)
rank2 <- rank2 %>% head(10)
rank2

# 11

mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212),"hwy"] <- NA

# 11-1

mpg <- mpg %>% select(drv, hwy)

is.na(mpg)
table(is.na(mpg))

# 11-2

mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212),"hwy"] <- NA

mpg %>% 
  select(drv, hwy) %>%
  filter(!is.na(hwy)) %>%
  group_by(drv) %>% summarise(mean_hwy = mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(1)

# 12

mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10,14,58,93), "drv"] <- "k"
mpg[c(29,43,129,203), "cty"] <- c(3,4,39,42)

# 12-1

mpg %>% select(drv)
table(mpg$drv)

mpg$drv <- ifelse(mpg$drv %in% "k", NA, mpg$drv)
table(mpg$drv)
mpg <- mpg %>% filter(!is.na(drv))

# 12-2

mpg$cty
table(mpg$cty)

boxplot(mpg$cty)$stats

mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)

boxplot(mpg$cty)

# 12-3

mpg %>% 
  select(drv, cty) %>%
  filter(!is.na(cty)) %>%
  group_by(drv) %>% summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))




